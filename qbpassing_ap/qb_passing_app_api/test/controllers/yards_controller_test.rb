require 'test_helper'

class YardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yard = yards(:one)
  end

  test "should get index" do
    get yards_url, as: :json
    assert_response :success
  end

  test "should create yard" do
    assert_difference('Yard.count') do
      post yards_url, params: { yard: { highest: @yard.highest, lowest: @yard.lowest } }, as: :json
    end

    assert_response 201
  end

  test "should show yard" do
    get yard_url(@yard), as: :json
    assert_response :success
  end

  test "should update yard" do
    patch yard_url(@yard), params: { yard: { highest: @yard.highest, lowest: @yard.lowest } }, as: :json
    assert_response 200
  end

  test "should destroy yard" do
    assert_difference('Yard.count', -1) do
      delete yard_url(@yard), as: :json
    end

    assert_response 204
  end
end
