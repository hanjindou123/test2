require 'test_helper'

class AvailablesControllerTest < ActionController::TestCase
  setup do
    @available = availables(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:availables)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create available" do
    assert_difference('Available.count') do
      post :create, available: { available_datetime: @available.available_datetime, available_slot0: @available.available_slot0, available_slot10: @available.available_slot10, available_slot11: @available.available_slot11, available_slot1: @available.available_slot1, available_slot2: @available.available_slot2, available_slot3: @available.available_slot3, available_slot4: @available.available_slot4, available_slot5: @available.available_slot5, available_slot6: @available.available_slot6, available_slot7: @available.available_slot7, available_slot8: @available.available_slot8, available_slot9: @available.available_slot9, instrument_id: @available.instrument_id }
    end

    assert_redirected_to available_path(assigns(:available))
  end

  test "should show available" do
    get :show, id: @available
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @available
    assert_response :success
  end

  test "should update available" do
    patch :update, id: @available, available: { available_datetime: @available.available_datetime, available_slot0: @available.available_slot0, available_slot10: @available.available_slot10, available_slot11: @available.available_slot11, available_slot1: @available.available_slot1, available_slot2: @available.available_slot2, available_slot3: @available.available_slot3, available_slot4: @available.available_slot4, available_slot5: @available.available_slot5, available_slot6: @available.available_slot6, available_slot7: @available.available_slot7, available_slot8: @available.available_slot8, available_slot9: @available.available_slot9, instrument_id: @available.instrument_id }
    assert_redirected_to available_path(assigns(:available))
  end

  test "should destroy available" do
    assert_difference('Available.count', -1) do
      delete :destroy, id: @available
    end

    assert_redirected_to availables_path
  end
end
