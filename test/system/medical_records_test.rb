require "application_system_test_case"

class MedicalRecordsTest < ApplicationSystemTestCase
  setup do
    @medical_record = medical_records(:one)
  end

  test "visiting the index" do
    visit medical_records_url
    assert_selector "h1", text: "Medical records"
  end

  test "should create medical record" do
    visit medical_records_url
    click_on "New medical record"

    fill_in "Allergies", with: @medical_record.allergies
    fill_in "Analysis", with: @medical_record.analysis
    fill_in "Appointment", with: @medical_record.appointment_id
    fill_in "Appointment reason", with: @medical_record.appointment_reason
    fill_in "Background", with: @medical_record.background
    fill_in "Disability", with: @medical_record.disability
    fill_in "Doctor", with: @medical_record.doctor_id
    fill_in "Patient", with: @medical_record.patient_id
    fill_in "Recommendations", with: @medical_record.recommendations
    click_on "Create Medical record"

    assert_text "Medical record was successfully created"
    click_on "Back"
  end

  test "should update Medical record" do
    visit medical_record_url(@medical_record)
    click_on "Edit this medical record", match: :first

    fill_in "Allergies", with: @medical_record.allergies
    fill_in "Analysis", with: @medical_record.analysis
    fill_in "Appointment", with: @medical_record.appointment_id
    fill_in "Appointment reason", with: @medical_record.appointment_reason
    fill_in "Background", with: @medical_record.background
    fill_in "Disability", with: @medical_record.disability
    fill_in "Doctor", with: @medical_record.doctor_id
    fill_in "Patient", with: @medical_record.patient_id
    fill_in "Recommendations", with: @medical_record.recommendations
    click_on "Update Medical record"

    assert_text "Medical record was successfully updated"
    click_on "Back"
  end

  test "should destroy Medical record" do
    visit medical_record_url(@medical_record)
    click_on "Destroy this medical record", match: :first

    assert_text "Medical record was successfully destroyed"
  end
end
