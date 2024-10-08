# == Schema Information
#
# Table name: appointments
#
#  id               :bigint           not null, primary key
#  doctor_id        :bigint           not null
#  patient_id       :bigint           not null
#  specialty_id     :bigint           not null
#  health_center_id :bigint           not null
#  date_time        :datetime
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
require "test_helper"

class AppointmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
