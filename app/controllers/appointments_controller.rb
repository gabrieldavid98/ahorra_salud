class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[ show edit update destroy ]
  after_action :create_missing_test, only: [:create]

  # GET /appointments or /appointments.json
  def index
    if patient_signed_in?
      @appointments = current_patient.appointments.includes(:doctor, :specialty, :health_center)
    else
      @appointments = Appointment.all
    end
  end

  # GET /appointments/1 or /appointments/1.json
  def show
  end

  # GET /appointments/new
  def new
    @appointment = Appointment.new
    @doctors = Doctor.select(:id, :names, :last_names)
    @specialties = Specialty.select(:id, :name)
    @health_centers = HealthCenter.select(:name, :id)
  end

  # GET /appointments/1/edit
  def edit
  end

  # POST /appointments or /appointments.json
  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.patient_id = current_patient.id

    respond_to do |format|
      if @appointment.save
        format.html { redirect_to @appointment, notice: "Cita medica agendada exitosamente" }
        format.json { render :show, status: :created, location: @appointment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /appointments/1 or /appointments/1.json
  def update
    respond_to do |format|
      if @appointment.update(appointment_params)
        format.html { redirect_to @appointment, notice: "Appointment was successfully updated." }
        format.json { render :show, status: :ok, location: @appointment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @appointment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /appointments/1 or /appointments/1.json
  def destroy
    @appointment.destroy

    respond_to do |format|
      format.html { redirect_to appointments_path, status: :see_other, notice: "Appointment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def appointment_params
      params.require(:appointment).permit(:doctor_id, :user_id, :specialty_id, :health_center_id, :date_time)
    end

    def create_missing_test
      medical_data = MedicalData.new

      sample = medical_data.test(@appointment.specialty.name)
      new_test = {
        patient_id: current_patient.id,
        doctor_id: @appointment.doctor_id,
        date_time: @appointment.date_time.advance(hours: 1),
      }

      test = Test.new(new_test.reverse_merge!(sample))
      test.save
    end
end
