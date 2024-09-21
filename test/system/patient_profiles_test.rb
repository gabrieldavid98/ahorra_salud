require "application_system_test_case"

class PatientProfilesTest < ApplicationSystemTestCase
  setup do
    @patient_profile = patient_profiles(:one)
  end

  test "visiting the index" do
    visit patient_profiles_url
    assert_selector "h1", text: "Patient profiles"
  end

  test "should create patient profile" do
    visit patient_profiles_url
    click_on "New patient profile"

    fill_in "Address", with: @patient_profile.address
    fill_in "Birthdate", with: @patient_profile.birthdate
    fill_in "Identification", with: @patient_profile.identification
    fill_in "Identification type", with: @patient_profile.identification_type_id
    fill_in "Last names", with: @patient_profile.last_names
    fill_in "Names", with: @patient_profile.names
    fill_in "Patient", with: @patient_profile.patient_id
    fill_in "Phone", with: @patient_profile.phone
    check "Sex" if @patient_profile.sex
    click_on "Create Patient profile"

    assert_text "Patient profile was successfully created"
    click_on "Back"
  end

  test "should update Patient profile" do
    visit patient_profile_url(@patient_profile)
    click_on "Edit this patient profile", match: :first

    fill_in "Address", with: @patient_profile.address
    fill_in "Birthdate", with: @patient_profile.birthdate
    fill_in "Identification", with: @patient_profile.identification
    fill_in "Identification type", with: @patient_profile.identification_type_id
    fill_in "Last names", with: @patient_profile.last_names
    fill_in "Names", with: @patient_profile.names
    fill_in "Patient", with: @patient_profile.patient_id
    fill_in "Phone", with: @patient_profile.phone
    check "Sex" if @patient_profile.sex
    click_on "Update Patient profile"

    assert_text "Patient profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Patient profile" do
    visit patient_profile_url(@patient_profile)
    click_on "Destroy this patient profile", match: :first

    assert_text "Patient profile was successfully destroyed"
  end
end
