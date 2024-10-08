require "test_helper"

class MedicamentAuthorizationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medicament_authorization = medicament_authorizations(:one)
  end

  test "should get index" do
    get medicament_authorizations_url
    assert_response :success
  end

  test "should get new" do
    get new_medicament_authorization_url
    assert_response :success
  end

  test "should create medicament_authorization" do
    assert_difference("MedicamentAuthorization.count") do
      post medicament_authorizations_url, params: { medicament_authorization: { appointment_id: @medicament_authorization.appointment_id, doctor_id: @medicament_authorization.doctor_id, medical_record_id: @medicament_authorization.medical_record_id, name: @medicament_authorization.name, patient_id: @medicament_authorization.patient_id, periodicity: @medicament_authorization.periodicity, quantity: @medicament_authorization.quantity } }
    end

    assert_redirected_to medicament_authorization_url(MedicamentAuthorization.last)
  end

  test "should show medicament_authorization" do
    get medicament_authorization_url(@medicament_authorization)
    assert_response :success
  end

  test "should get edit" do
    get edit_medicament_authorization_url(@medicament_authorization)
    assert_response :success
  end

  test "should update medicament_authorization" do
    patch medicament_authorization_url(@medicament_authorization), params: { medicament_authorization: { appointment_id: @medicament_authorization.appointment_id, doctor_id: @medicament_authorization.doctor_id, medical_record_id: @medicament_authorization.medical_record_id, name: @medicament_authorization.name, patient_id: @medicament_authorization.patient_id, periodicity: @medicament_authorization.periodicity, quantity: @medicament_authorization.quantity } }
    assert_redirected_to medicament_authorization_url(@medicament_authorization)
  end

  test "should destroy medicament_authorization" do
    assert_difference("MedicamentAuthorization.count", -1) do
      delete medicament_authorization_url(@medicament_authorization)
    end

    assert_redirected_to medicament_authorizations_url
  end
end
