require 'test_helper'

class QuarterbacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quarterback = quarterbacks(:one)
  end

  test "should get index" do
    get quarterbacks_url, as: :json
    assert_response :success
  end

  test "should create quarterback" do
    assert_difference('Quarterback.count') do
      post quarterbacks_url, params: { quarterback: { city: @quarterback.city, name: @quarterback.name, team: @quarterback.team } }, as: :json
    end

    assert_response 201
  end

  test "should show quarterback" do
    get quarterback_url(@quarterback), as: :json
    assert_response :success
  end

  test "should update quarterback" do
    patch quarterback_url(@quarterback), params: { quarterback: { city: @quarterback.city, name: @quarterback.name, team: @quarterback.team } }, as: :json
    assert_response 200
  end

  test "should destroy quarterback" do
    assert_difference('Quarterback.count', -1) do
      delete quarterback_url(@quarterback), as: :json
    end

    assert_response 204
  end
end
