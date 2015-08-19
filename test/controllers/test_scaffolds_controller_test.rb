require 'test_helper'

class TestScaffoldsControllerTest < ActionController::TestCase
  setup do
    @test_scaffold = test_scaffolds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_scaffolds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_scaffold" do
    assert_difference('TestScaffold.count') do
      post :create, test_scaffold: { email: @test_scaffold.email, name: @test_scaffold.name, passoword: @test_scaffold.passoword }
    end

    assert_redirected_to test_scaffold_path(assigns(:test_scaffold))
  end

  test "should show test_scaffold" do
    get :show, id: @test_scaffold
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_scaffold
    assert_response :success
  end

  test "should update test_scaffold" do
    patch :update, id: @test_scaffold, test_scaffold: { email: @test_scaffold.email, name: @test_scaffold.name, passoword: @test_scaffold.passoword }
    assert_redirected_to test_scaffold_path(assigns(:test_scaffold))
  end

  test "should destroy test_scaffold" do
    assert_difference('TestScaffold.count', -1) do
      delete :destroy, id: @test_scaffold
    end

    assert_redirected_to test_scaffolds_path
  end
end
