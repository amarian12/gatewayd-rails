require 'test_helper'

class RippleAddressesControllerTest < ActionController::TestCase
  setup do
    @ripple_address = ripple_addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ripple_addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ripple_address" do
    assert_difference('RippleAddress.count') do
      post :create, ripple_address: { address: @ripple_address.address, data: @ripple_address.data, managed: @ripple_address.managed, tag: @ripple_address.tag, type: @ripple_address.type, uid: @ripple_address.uid }
    end

    assert_redirected_to ripple_address_path(assigns(:ripple_address))
  end

  test "should show ripple_address" do
    get :show, id: @ripple_address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ripple_address
    assert_response :success
  end

  test "should update ripple_address" do
    patch :update, id: @ripple_address, ripple_address: { address: @ripple_address.address, data: @ripple_address.data, managed: @ripple_address.managed, tag: @ripple_address.tag, type: @ripple_address.type, uid: @ripple_address.uid }
    assert_redirected_to ripple_address_path(assigns(:ripple_address))
  end

  test "should destroy ripple_address" do
    assert_difference('RippleAddress.count', -1) do
      delete :destroy, id: @ripple_address
    end

    assert_redirected_to ripple_addresses_path
  end
end
