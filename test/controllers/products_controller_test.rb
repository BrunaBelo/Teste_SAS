require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    sign_in users(:employee_marketing)
    @product = products(:one)
  end

  test "should get index" do
    get product_listing_products_path
    assert_response :success
  end
  
  test "should get index admin" do
    get products_path
    assert_response :success
  end

  test "should update product" do
    patch product_url(@product), params: { product: { name: @product.name } }
    assert_response :success
  end

  test "should get new admin" do
    get new_product_path
    assert_response :success
  end
end
