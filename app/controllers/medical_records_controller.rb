class MedicalRecordsController < ApplicationController
  before_action :set_medical_record, only: %i[ show edit update destroy ]
  before_action :create_missing_medical_records, only: [:index]

  # GET /medical_records or /medical_records.json
  def index
    if patient_signed_in?
      @medical_records = current_patient.medical_records.includes(:doctor, :appointment)
    else
      @medical_records = MedicalRecord.all
    end
  end

  # GET /medical_records/1 or /medical_records/1.json
  def show
  end

  # GET /medical_records/new
  def new
    @medical_record = MedicalRecord.new
  end

  # GET /medical_records/1/edit
  def edit
  end

  # POST /medical_records or /medical_records.json
  def create
    @medical_record = MedicalRecord.new(medical_record_params)

    respond_to do |format|
      if @medical_record.save
        format.html { redirect_to @medical_record, notice: "Medical record was successfully created." }
        format.json { render :show, status: :created, location: @medical_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medical_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medical_records/1 or /medical_records/1.json
  def update
    respond_to do |format|
      if @medical_record.update(medical_record_params)
        format.html { redirect_to @medical_record, notice: "Medical record was successfully updated." }
        format.json { render :show, status: :ok, location: @medical_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medical_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medical_records/1 or /medical_records/1.json
  def destroy
    @medical_record.destroy

    respond_to do |format|
      format.html { redirect_to medical_records_path, status: :see_other, notice: "Medical record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medical_record
      @medical_record = MedicalRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medical_record_params
      params.require(:medical_record).permit(:patient_id, :doctor_id, :appointment_id, :disability, :allergies, :appointment_reason, :background, :analysis, :recommendations)
    end

    def create_missing_medical_records
      medical_data = MedicalData.new
      appointments = current_patient.appointments
        .includes(:doctor, :specialty, :health_center, :medical_record)

      medical_records = appointments.filter { |a| a.medical_record.nil? }
        .map do |a|
          sample = medical_data.medical_records
            .filter {|r| r[:specialty] == a.specialty.name}
            .first[:history]
          new_medical_record = {
            patient_id: current_patient.id,
            doctor_id: a.doctor_id,
            appointment_id: a.id,
          }

          new_medical_record.reverse_merge!(sample)
        end

      MedicalRecord.create(medical_records)
    end
end
