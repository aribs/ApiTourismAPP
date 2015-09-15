require 'test_helper'

class VillagesControllerTest < ActionController::TestCase
  setup do
    @village = villages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:villages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create village" do
    assert_difference('Village.count') do
      post :create, village: { info_text: @village.info_text, latitude: @village.latitude, longitude: @village.longitude, name: @village.name, phone_info_tourism: @village.phone_info_tourism, phone_municipality: @village.phone_municipality, photo1: @village.photo1, photo2: @village.photo2, photo3: @village.photo3, photo4: @village.photo4 }
    end

    assert_redirected_to village_path(assigns(:village))
  end

  test "should show village" do
    get :show, id: @village
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @village
    assert_response :success
  end

  test "should update village" do
    patch :update, id: @village, village: { info_text: @village.info_text, latitude: @village.latitude, longitude: @village.longitude, name: @village.name, phone_info_tourism: @village.phone_info_tourism, phone_municipality: @village.phone_municipality, photo1: @village.photo1, photo2: @village.photo2, photo3: @village.photo3, photo4: @village.photo4 }
    assert_redirected_to village_path(assigns(:village))
  end

  test "should destroy village" do
    assert_difference('Village.count', -1) do
      delete :destroy, id: @village
    end

    assert_redirected_to villages_path
  end
end
