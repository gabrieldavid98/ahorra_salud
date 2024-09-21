class PatientProfilesController < ApplicationController
  before_action :set_patient_profile, only: %i[ show edit update destroy ]

  # GET /patient_profiles or /patient_profiles.json
  def index
    @patient_profiles = PatientProfile.all
  end

  # GET /patient_profiles/1 or /patient_profiles/1.json
  def show
  end

  # GET /patient_profiles/new
  def new
    @patient_profile = PatientProfile.new
  end

  # GET /patient_profiles/1/edit
  def edit
  end

  # POST /patient_profiles or /patient_profiles.json
  def create
    @patient_profile = PatientProfile.new(patient_profile_params)

    respond_to do |format|
      if @patient_profile.save
        format.html { redirect_to @patient_profile, notice: "Patient profile was successfully created." }
        format.json { render :show, status: :created, location: @patient_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @patient_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /patient_profiles/1 or /patient_profiles/1.json
  def update
    respond_to do |format|
      if @patient_profile.update(patient_profile_params)
        format.html { redirect_to @patient_profile, notice: "Patient profile was successfully updated." }
        format.json { render :show, status: :ok, location: @patient_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @patient_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /patient_profiles/1 or /patient_profiles/1.json
  def destroy
    @patient_profile.destroy

    respond_to do |format|
      format.html { redirect_to patient_profiles_path, status: :see_other, notice: "Patient profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient_profile
      @patient_profile = PatientProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def patient_profile_params
      params.require(:patient_profile).permit(:patient_id, :names, :last_names, :identification_type_id, :identification, :address, :phone, :sex, :birthdate)
    end
end
