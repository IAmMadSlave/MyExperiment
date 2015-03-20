require 'test_helper'

class BriteAsBarabasisControllerTest < ActionController::TestCase
  setup do
    @brite_as_barabasis = brite_as_barabasis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brite_as_barabasis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brite_as_barabasis" do
    assert_difference('BriteAsBarabasi.count') do
      post :create, brite_as_barabasis: { bwdist: @brite_as_barabasis.bwdist, bwmax: @brite_as_barabasis.bwmax, bwmin: @brite_as_barabasis.bwmin, description: @brite_as_barabasis.description, generator_id: @brite_as_barabasis.generator_id, hs: @brite_as_barabasis.hs, ls: @brite_as_barabasis.ls, m: @brite_as_barabasis.m, n: @brite_as_barabasis.n, name: @brite_as_barabasis.name, nodeplacement: @brite_as_barabasis.nodeplacement, status: @brite_as_barabasis.status, type_id: @brite_as_barabasis.type_id, user_id: @brite_as_barabasis.user_id }
    end

    assert_redirected_to brite_as_barabasis_path(assigns(:brite_as_barabasis))
  end

  test "should show brite_as_barabasis" do
    get :show, id: @brite_as_barabasis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brite_as_barabasis
    assert_response :success
  end

  test "should update brite_as_barabasis" do
    patch :update, id: @brite_as_barabasis, brite_as_barabasis: { bwdist: @brite_as_barabasis.bwdist, bwmax: @brite_as_barabasis.bwmax, bwmin: @brite_as_barabasis.bwmin, description: @brite_as_barabasis.description, generator_id: @brite_as_barabasis.generator_id, hs: @brite_as_barabasis.hs, ls: @brite_as_barabasis.ls, m: @brite_as_barabasis.m, n: @brite_as_barabasis.n, name: @brite_as_barabasis.name, nodeplacement: @brite_as_barabasis.nodeplacement, status: @brite_as_barabasis.status, type_id: @brite_as_barabasis.type_id, user_id: @brite_as_barabasis.user_id }
    assert_redirected_to brite_as_barabasis_path(assigns(:brite_as_barabasis))
  end

  test "should destroy brite_as_barabasis" do
    assert_difference('BriteAsBarabasi.count', -1) do
      delete :destroy, id: @brite_as_barabasis
    end

    assert_redirected_to brite_as_barabasis_path
  end
end
