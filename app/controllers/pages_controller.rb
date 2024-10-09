class PagesController < ApplicationController
  def home
    if patient_signed_in? && current_patient.patient_profile.nil?
      respond_to do |format|
        format.html { redirect_to new_patient_profile_path, notice: "Termine de completar su perfil" }
      end
    end

    if support_signed_in?
      respond_to do |format|
        format.html { redirect_to chat_home_path, notice: "Bienvenido" }
      end
    end
  end

  def user
  end

  def admin
  end
end
