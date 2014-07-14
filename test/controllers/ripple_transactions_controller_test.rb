require 'test_helper'

class RippleTransactionsControllerTest < ActionController::TestCase
  setup do
    @ripple_transaction = ripple_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ripple_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ripple_transaction" do
    assert_difference('RippleTransaction.count') do
      post :create, ripple_transaction: { data: @ripple_transaction.data, from_address: @ripple_transaction.from_address, from_amount: @ripple_transaction.from_amount, from_currency: @ripple_transaction.from_currency, from_issuer: @ripple_transaction.from_issuer, state: @ripple_transaction.state, to_address: @ripple_transaction.to_address, to_amount: @ripple_transaction.to_amount, to_currency: @ripple_transaction.to_currency, to_issuer: @ripple_transaction.to_issuer, transaction_hash: @ripple_transaction.transaction_hash, transaction_state: @ripple_transaction.transaction_state, uid: @ripple_transaction.uid }
    end

    assert_redirected_to ripple_transaction_path(assigns(:ripple_transaction))
  end

  test "should show ripple_transaction" do
    get :show, id: @ripple_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ripple_transaction
    assert_response :success
  end

  test "should update ripple_transaction" do
    patch :update, id: @ripple_transaction, ripple_transaction: { data: @ripple_transaction.data, from_address: @ripple_transaction.from_address, from_amount: @ripple_transaction.from_amount, from_currency: @ripple_transaction.from_currency, from_issuer: @ripple_transaction.from_issuer, state: @ripple_transaction.state, to_address: @ripple_transaction.to_address, to_amount: @ripple_transaction.to_amount, to_currency: @ripple_transaction.to_currency, to_issuer: @ripple_transaction.to_issuer, transaction_hash: @ripple_transaction.transaction_hash, transaction_state: @ripple_transaction.transaction_state, uid: @ripple_transaction.uid }
    assert_redirected_to ripple_transaction_path(assigns(:ripple_transaction))
  end

  test "should destroy ripple_transaction" do
    assert_difference('RippleTransaction.count', -1) do
      delete :destroy, id: @ripple_transaction
    end

    assert_redirected_to ripple_transactions_path
  end
end
