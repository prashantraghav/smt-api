require 'test_helper'

class KasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @kase = kases(:one)
  end

  test "should get index" do
    get kases_url, as: :json
    assert_response :success
  end

  test "should create kase" do
    assert_difference('Kase.count') do
      post kases_url, params: { kase: { name: @kase.name, no: @kase.no, year: @kase.year } }, as: :json
    end

    assert_response 201
  end

  test "should show kase" do
    get kase_url(@kase), as: :json
    assert_response :success
  end

  test "should update kase" do
    patch kase_url(@kase), params: { kase: { name: @kase.name, no: @kase.no, year: @kase.year } }, as: :json
    assert_response 200
  end

  test "should destroy kase" do
    assert_difference('Kase.count', -1) do
      delete kase_url(@kase), as: :json
    end

    assert_response 204
  end
end
