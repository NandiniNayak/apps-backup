require 'test_helper'

class SumnesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sumne = sumnes(:one)
  end

  test "should get index" do
    get sumnes_url
    assert_response :success
  end

  test "should get new" do
    get new_sumne_url
    assert_response :success
  end

  test "should create sumne" do
    assert_difference('Sumne.count') do
      post sumnes_url, params: { sumne: { ingredients: @sumne.ingredients, name: @sumne.name, price: @sumne.price } }
    end

    assert_redirected_to sumne_url(Sumne.last)
  end

  test "should show sumne" do
    get sumne_url(@sumne)
    assert_response :success
  end

  test "should get edit" do
    get edit_sumne_url(@sumne)
    assert_response :success
  end

  test "should update sumne" do
    patch sumne_url(@sumne), params: { sumne: { ingredients: @sumne.ingredients, name: @sumne.name, price: @sumne.price } }
    assert_redirected_to sumne_url(@sumne)
  end

  test "should destroy sumne" do
    assert_difference('Sumne.count', -1) do
      delete sumne_url(@sumne)
    end

    assert_redirected_to sumnes_url
  end
end
