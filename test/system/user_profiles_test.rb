require "application_system_test_case"

class UserProfilesTest < ApplicationSystemTestCase
  setup do
    @user_profile = user_profiles(:one)
  end

  test "visiting the index" do
    visit user_profiles_url
    assert_selector "h1", text: "User profiles"
  end

  test "should create user profile" do
    visit user_profiles_url
    click_on "New user profile"

    fill_in "Birthdate", with: @user_profile.birthdate
    fill_in "Identification", with: @user_profile.identification
    fill_in "Identification type", with: @user_profile.identification_type_id
    fill_in "Last names", with: @user_profile.last_names
    fill_in "Names", with: @user_profile.names
    check "Sex" if @user_profile.sex
    fill_in "User", with: @user_profile.user_id
    click_on "Create User profile"

    assert_text "User profile was successfully created"
    click_on "Back"
  end

  test "should update User profile" do
    visit user_profile_url(@user_profile)
    click_on "Edit this user profile", match: :first

    fill_in "Birthdate", with: @user_profile.birthdate
    fill_in "Identification", with: @user_profile.identification
    fill_in "Identification type", with: @user_profile.identification_type_id
    fill_in "Last names", with: @user_profile.last_names
    fill_in "Names", with: @user_profile.names
    check "Sex" if @user_profile.sex
    fill_in "User", with: @user_profile.user_id
    click_on "Update User profile"

    assert_text "User profile was successfully updated"
    click_on "Back"
  end

  test "should destroy User profile" do
    visit user_profile_url(@user_profile)
    click_on "Destroy this user profile", match: :first

    assert_text "User profile was successfully destroyed"
  end
end
