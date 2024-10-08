class MedicamentAuthorizationsController < ApplicationController
  include MedicamentAuthorizationsHelper

  before_action :set_medicament_authorization, only: %i[ show edit update destroy authorize]
  before_action :create_missing_medicament_authorizations, only: [:index]

  # GET /medicament_authorizations or /medicament_authorizations.json
  def index
    if patient_signed_in?
      @medicament_authorizations = current_patient.medicament_authorizations
    else
      @medicament_authorizations = MedicamentAuthorization.all
    end
  end

  # GET /medicament_authorizations/1 or /medicament_authorizations/1.json
  def show
  end

  # GET /medicament_authorizations/new
  def new
    @medicament_authorization = MedicamentAuthorization.new
  end

  # GET /medicament_authorizations/1/edit
  def edit
  end

  # POST /medicament_authorizations or /medicament_authorizations.json
  def create
    @medicament_authorization = MedicamentAuthorization.new(medicament_authorization_params)

    respond_to do |format|
      if @medicament_authorization.save
        format.html { redirect_to @medicament_authorization, notice: "Medicament authorization was successfully created." }
        format.json { render :show, status: :created, location: @medicament_authorization }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medicament_authorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medicament_authorizations/1 or /medicament_authorizations/1.json
  def update
    respond_to do |format|
      if @medicament_authorization.update(medicament_authorization_params)
        format.html { redirect_to @medicament_authorization, notice: "Medicament authorization was successfully updated." }
        format.json { render :show, status: :ok, location: @medicament_authorization }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medicament_authorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medicament_authorizations/1 or /medicament_authorizations/1.json
  def destroy
    @medicament_authorization.destroy

    respond_to do |format|
      format.html { redirect_to medicament_authorizations_path, status: :see_other, notice: "Medicament authorization was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def authorize
    case @medicament_authorization.status
    when 0
      @medicament_authorization.status = 1
    when 1
      @medicament_authorization.status = 2
    end

    notice = "Medicamento #{status_text(@medicament_authorization.status).downcase}"

    respond_to do |format|
      if @medicament_authorization.save
        format.html { redirect_to medicament_authorizations_path, notice: notice }
        format.json { render :show, status: :ok, location: medicament_authorizations_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medicament_authorization.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medicament_authorization
      @medicament_authorization = MedicamentAuthorization.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medicament_authorization_params
      params.require(:medicament_authorization).permit(:medical_record_id, :doctor_id, :appointment_id, :patient_id, :name, :quantity, :periodicity)
    end

    def create_missing_medicament_authorizations
      medical_data = MedicalData.new
      appointments = current_patient.appointments
        .includes(:doctor, :specialty, :health_center, :medical_record)

      appointments
        .filter { |a| a.medicament_authorizations.empty? }
        .each do |a|
          medicament_authorization = medical_data.meds(a.specialty.name)
            .map do |sample|
              medicament_authorization = {
                medical_record_id: a.medical_record.id,
                patient_id: current_patient.id,
                doctor_id: a.doctor_id,
                appointment_id: a.id,
              }

              medicament_authorization.reverse_merge!(sample)
            end

          MedicamentAuthorization.create(medicament_authorization)
        end
    end

    def authorize_pendings
      if patient_signed_in?
        @medicament_authorizations = current_patient.medicament_authorizations
        @medicament_authorizations.filter {|m| DateTime.current.advance(hours: 1) > m.updated_at}
          .each do |m|
            if m.status == 1
              m.status = 2
              m.save
            end
          end
      end
    end
end
