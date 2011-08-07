require 'test_helper'

class AddressCardsControllerTest < ActionController::TestCase
  setup do
    @address_card = address_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:address_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address_card" do
    assert_difference('AddressCard.count') do
      post :create, :address_card => @address_card.attributes
    end

    assert_redirected_to address_card_path(assigns(:address_card))
  end

  test "should show address_card" do
    get :show, :id => @address_card.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @address_card.to_param
    assert_response :success
  end

  test "should update address_card" do
    put :update, :id => @address_card.to_param, :address_card => @address_card.attributes
    assert_redirected_to address_card_path(assigns(:address_card))
  end

  test "should destroy address_card" do
    assert_difference('AddressCard.count', -1) do
      delete :destroy, :id => @address_card.to_param
    end

    assert_redirected_to address_cards_path
  end
end
