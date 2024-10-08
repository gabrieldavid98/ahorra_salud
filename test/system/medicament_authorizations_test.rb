require "application_system_test_case"

class MedicamentAuthorizationsTest < ApplicationSystemTestCase
  setup do
    @medicament_authorization = medicament_authorizations(:one)
  end

  test "visiting the index" do
    visit medicament_authorizations_url
    assert_selector "h1", text: "Medicament authorizations"
  end

  test "should create medicament authorization" do
    visit medicament_authorizations_url
    click_on "New medicament authorization"

    fill_in "Appointment", with: @medicament_authorization.appointment_id
    fill_in "Doctor", with: @medicament_authorization.doctor_id
    fill_in "Medical record", with: @medicament_authorization.medical_record_id
    fill_in "Name", with: @medicament_authorization.name
    fill_in "Patient", with: @medicament_authorization.patient_id
    fill_in "Periodicity", with: @medicament_authorization.periodicity
    fill_in "Quantity", with: @medicament_authorization.quantity
    click_on "Create Medicament authorization"

    assert_text "Medicament authorization was successfully created"
    click_on "Back"
  end

  test "should update Medicament authorization" do
    visit medicament_authorization_url(@medicament_authorization)
    click_on "Edit this medicament authorization", match: :first

    fill_in "Appointment", with: @medicament_authorization.appointment_id
    fill_in "Doctor", with: @medicament_authorization.doctor_id
    fill_in "Medical record", with: @medicament_authorization.medical_record_id
    fill_in "Name", with: @medicament_authorization.name
    fill_in "Patient", with: @medicament_authorization.patient_id
    fill_in "Periodicity", with: @medicament_authorization.periodicity
    fill_in "Quantity", with: @medicament_authorization.quantity
    click_on "Update Medicament authorization"

    assert_text "Medicament authorization was successfully updated"
    click_on "Back"
  end

  test "should destroy Medicament authorization" do
    visit medicament_authorization_url(@medicament_authorization)
    click_on "Destroy this medicament authorization", match: :first

    assert_text "Medicament authorization was successfully destroyed"
  end
end
