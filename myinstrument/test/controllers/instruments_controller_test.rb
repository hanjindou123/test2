require 'test_helper'

class InstrumentsControllerTest < ActionController::TestCase
  setup do
    @instrument = instruments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instruments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instrument" do
    assert_difference('Instrument.count') do
      post :create, instrument: { instrument_address: @instrument.instrument_address, instrument_administrator: @instrument.instrument_administrator, instrument_assessor: @instrument.instrument_assessor, instrument_assistant: @instrument.instrument_assistant, instrument_brief: @instrument.instrument_brief, instrument_class: @instrument.instrument_class, instrument_cost_per_hour: @instrument.instrument_cost_per_hour, instrument_detail: @instrument.instrument_detail, instrument_name: @instrument.instrument_name, instrument_sn: @instrument.instrument_sn, instrument_state: @instrument.instrument_state }
    end

    assert_redirected_to instrument_path(assigns(:instrument))
  end

  test "should show instrument" do
    get :show, id: @instrument
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instrument
    assert_response :success
  end

  test "should update instrument" do
    patch :update, id: @instrument, instrument: { instrument_address: @instrument.instrument_address, instrument_administrator: @instrument.instrument_administrator, instrument_assessor: @instrument.instrument_assessor, instrument_assistant: @instrument.instrument_assistant, instrument_brief: @instrument.instrument_brief, instrument_class: @instrument.instrument_class, instrument_cost_per_hour: @instrument.instrument_cost_per_hour, instrument_detail: @instrument.instrument_detail, instrument_name: @instrument.instrument_name, instrument_sn: @instrument.instrument_sn, instrument_state: @instrument.instrument_state }
    assert_redirected_to instrument_path(assigns(:instrument))
  end

  test "should destroy instrument" do
    assert_difference('Instrument.count', -1) do
      delete :destroy, id: @instrument
    end

    assert_redirected_to instruments_path
  end
end
