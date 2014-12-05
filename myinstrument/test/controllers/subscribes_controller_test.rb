require 'test_helper'

class SubscribesControllerTest < ActionController::TestCase
  setup do
    @subscribe = subscribes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:subscribes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create subscribe" do
    assert_difference('Subscribe.count') do
      post :create, subscribe: { subscribe_cost: @subscribe.subscribe_cost, subscribe_instrument_sn: @subscribe.subscribe_instrument_sn, subscribe_state: @subscribe.subscribe_state, subscribe_submit_datetime: @subscribe.subscribe_submit_datetime, subscribe_use_slot0: @subscribe.subscribe_use_slot0, subscribe_use_slot10: @subscribe.subscribe_use_slot10, subscribe_use_slot11: @subscribe.subscribe_use_slot11, subscribe_use_slot1: @subscribe.subscribe_use_slot1, subscribe_use_slot2: @subscribe.subscribe_use_slot2, subscribe_use_slot3: @subscribe.subscribe_use_slot3, subscribe_use_slot4: @subscribe.subscribe_use_slot4, subscribe_use_slot5: @subscribe.subscribe_use_slot5, subscribe_use_slot6: @subscribe.subscribe_use_slot6, subscribe_use_slot7: @subscribe.subscribe_use_slot7, subscribe_use_slot8: @subscribe.subscribe_use_slot8, subscribe_use_slot9: @subscribe.subscribe_use_slot9, subscribe_user_name: @subscribe.subscribe_user_name }
    end

    assert_redirected_to subscribe_path(assigns(:subscribe))
  end

  test "should show subscribe" do
    get :show, id: @subscribe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @subscribe
    assert_response :success
  end

  test "should update subscribe" do
    patch :update, id: @subscribe, subscribe: { subscribe_cost: @subscribe.subscribe_cost, subscribe_instrument_sn: @subscribe.subscribe_instrument_sn, subscribe_state: @subscribe.subscribe_state, subscribe_submit_datetime: @subscribe.subscribe_submit_datetime, subscribe_use_slot0: @subscribe.subscribe_use_slot0, subscribe_use_slot10: @subscribe.subscribe_use_slot10, subscribe_use_slot11: @subscribe.subscribe_use_slot11, subscribe_use_slot1: @subscribe.subscribe_use_slot1, subscribe_use_slot2: @subscribe.subscribe_use_slot2, subscribe_use_slot3: @subscribe.subscribe_use_slot3, subscribe_use_slot4: @subscribe.subscribe_use_slot4, subscribe_use_slot5: @subscribe.subscribe_use_slot5, subscribe_use_slot6: @subscribe.subscribe_use_slot6, subscribe_use_slot7: @subscribe.subscribe_use_slot7, subscribe_use_slot8: @subscribe.subscribe_use_slot8, subscribe_use_slot9: @subscribe.subscribe_use_slot9, subscribe_user_name: @subscribe.subscribe_user_name }
    assert_redirected_to subscribe_path(assigns(:subscribe))
  end

  test "should destroy subscribe" do
    assert_difference('Subscribe.count', -1) do
      delete :destroy, id: @subscribe
    end

    assert_redirected_to subscribes_path
  end
end
