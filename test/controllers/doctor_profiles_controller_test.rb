require "test_helper"

class DoctorProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @doctor_profile = doctor_profiles(:one)
  end

  test "should get index" do
    get doctor_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_doctor_profile_url
    assert_response :success
  end

  test "should create doctor_profile" do
    assert_difference("DoctorProfile.count") do
      post doctor_profiles_url, params: { doctor_profile: { birthdate: @doctor_profile.birthdate, doctor_id: @doctor_profile.doctor_id, identification: @doctor_profile.identification, identification_type_id: @doctor_profile.identification_type_id, last_names: @doctor_profile.last_names, names: @doctor_profile.names, phone: @doctor_profile.phone, sex: @doctor_profile.sex } }
    end

    assert_redirected_to doctor_profile_url(DoctorProfile.last)
  end

  test "should show doctor_profile" do
    get doctor_profile_url(@doctor_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_doctor_profile_url(@doctor_profile)
    assert_response :success
  end

  test "should update doctor_profile" do
    patch doctor_profile_url(@doctor_profile), params: { doctor_profile: { birthdate: @doctor_profile.birthdate, doctor_id: @doctor_profile.doctor_id, identification: @doctor_profile.identification, identification_type_id: @doctor_profile.identification_type_id, last_names: @doctor_profile.last_names, names: @doctor_profile.names, phone: @doctor_profile.phone, sex: @doctor_profile.sex } }
    assert_redirected_to doctor_profile_url(@doctor_profile)
  end

  test "should destroy doctor_profile" do
    assert_difference("DoctorProfile.count", -1) do
      delete doctor_profile_url(@doctor_profile)
    end

    assert_redirected_to doctor_profiles_url
  end
end
