require 'test_helper'

class ExtendedProfilesControllerTest < ActionController::TestCase
  setup do
    @extended_profile = extended_profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extended_profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extended_profile" do
    assert_difference('ExtendedProfile.count') do
      post :create, extended_profile: { date_of_birth: @extended_profile.date_of_birth, first_name: @extended_profile.first_name, flickr_image_id: @extended_profile.flickr_image_id, ispremium: @extended_profile.ispremium, last_name: @extended_profile.last_name, phone_number: @extended_profile.phone_number, references: @extended_profile.references, sex: @extended_profile.sex }
    end

    assert_redirected_to extended_profile_path(assigns(:extended_profile))
  end

  test "should show extended_profile" do
    get :show, id: @extended_profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extended_profile
    assert_response :success
  end

  test "should update extended_profile" do
    put :update, id: @extended_profile, extended_profile: { date_of_birth: @extended_profile.date_of_birth, first_name: @extended_profile.first_name, flickr_image_id: @extended_profile.flickr_image_id, ispremium: @extended_profile.ispremium, last_name: @extended_profile.last_name, phone_number: @extended_profile.phone_number, references: @extended_profile.references, sex: @extended_profile.sex }
    assert_redirected_to extended_profile_path(assigns(:extended_profile))
  end

  test "should destroy extended_profile" do
    assert_difference('ExtendedProfile.count', -1) do
      delete :destroy, id: @extended_profile
    end

    assert_redirected_to extended_profiles_path
  end
end
