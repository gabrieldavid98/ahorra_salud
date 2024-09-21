class DoctorProfilesController < ApplicationController
  before_action :set_doctor_profile, only: %i[ show edit update destroy ]

  # GET /doctor_profiles or /doctor_profiles.json
  def index
    @doctor_profiles = DoctorProfile.all
  end

  # GET /doctor_profiles/1 or /doctor_profiles/1.json
  def show
  end

  # GET /doctor_profiles/new
  def new
    @doctor_profile = DoctorProfile.new
  end

  # GET /doctor_profiles/1/edit
  def edit
  end

  # POST /doctor_profiles or /doctor_profiles.json
  def create
    @doctor_profile = DoctorProfile.new(doctor_profile_params)

    respond_to do |format|
      if @doctor_profile.save
        format.html { redirect_to @doctor_profile, notice: "Doctor profile was successfully created." }
        format.json { render :show, status: :created, location: @doctor_profile }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @doctor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctor_profiles/1 or /doctor_profiles/1.json
  def update
    respond_to do |format|
      if @doctor_profile.update(doctor_profile_params)
        format.html { redirect_to @doctor_profile, notice: "Doctor profile was successfully updated." }
        format.json { render :show, status: :ok, location: @doctor_profile }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @doctor_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctor_profiles/1 or /doctor_profiles/1.json
  def destroy
    @doctor_profile.destroy

    respond_to do |format|
      format.html { redirect_to doctor_profiles_path, status: :see_other, notice: "Doctor profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor_profile
      @doctor_profile = DoctorProfile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def doctor_profile_params
      params.require(:doctor_profile).permit(:doctor_id, :names, :last_names, :identification_type_id, :identification, :sex, :birthdate, :phone)
    end
end
