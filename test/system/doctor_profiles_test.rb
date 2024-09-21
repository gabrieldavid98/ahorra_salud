require "application_system_test_case"

class DoctorProfilesTest < ApplicationSystemTestCase
  setup do
    @doctor_profile = doctor_profiles(:one)
  end

  test "visiting the index" do
    visit doctor_profiles_url
    assert_selector "h1", text: "Doctor profiles"
  end

  test "should create doctor profile" do
    visit doctor_profiles_url
    click_on "New doctor profile"

    fill_in "Birthdate", with: @doctor_profile.birthdate
    fill_in "Doctor", with: @doctor_profile.doctor_id
    fill_in "Identification", with: @doctor_profile.identification
    fill_in "Identification type", with: @doctor_profile.identification_type_id
    fill_in "Last names", with: @doctor_profile.last_names
    fill_in "Names", with: @doctor_profile.names
    fill_in "Phone", with: @doctor_profile.phone
    check "Sex" if @doctor_profile.sex
    click_on "Create Doctor profile"

    assert_text "Doctor profile was successfully created"
    click_on "Back"
  end

  test "should update Doctor profile" do
    visit doctor_profile_url(@doctor_profile)
    click_on "Edit this doctor profile", match: :first

    fill_in "Birthdate", with: @doctor_profile.birthdate
    fill_in "Doctor", with: @doctor_profile.doctor_id
    fill_in "Identification", with: @doctor_profile.identification
    fill_in "Identification type", with: @doctor_profile.identification_type_id
    fill_in "Last names", with: @doctor_profile.last_names
    fill_in "Names", with: @doctor_profile.names
    fill_in "Phone", with: @doctor_profile.phone
    check "Sex" if @doctor_profile.sex
    click_on "Update Doctor profile"

    assert_text "Doctor profile was successfully updated"
    click_on "Back"
  end

  test "should destroy Doctor profile" do
    visit doctor_profile_url(@doctor_profile)
    click_on "Destroy this doctor profile", match: :first

    assert_text "Doctor profile was successfully destroyed"
  end
end
