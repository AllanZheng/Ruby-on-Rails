require 'test_helper'

class WinesControllerTest < ActionController::TestCase
  setup do
    @wine = wines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wine" do
    assert_difference('Wine.count') do
      post :create, wine: { Company: @wine.Company, Description: @wine.Description, Img_url: @wine.Img_url, Origin: @wine.Origin, Price: @wine.Price, Size: @wine.Size, Suit_veg: @wine.Suit_veg, Title: @wine.Title, Type: @wine.Type }
    end

    assert_redirected_to wine_path(assigns(:wine))
  end

  test "should show wine" do
    get :show, id: @wine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wine
    assert_response :success
  end

  test "should update wine" do
    patch :update, id: @wine, wine: { Company: @wine.Company, Description: @wine.Description, Img_url: @wine.Img_url, Origin: @wine.Origin, Price: @wine.Price, Size: @wine.Size, Suit_veg: @wine.Suit_veg, Title: @wine.Title, Type: @wine.Type }
    assert_redirected_to wine_path(assigns(:wine))
  end

  test "should destroy wine" do
    assert_difference('Wine.count', -1) do
      delete :destroy, id: @wine
    end

    assert_redirected_to wines_path
  end
end
