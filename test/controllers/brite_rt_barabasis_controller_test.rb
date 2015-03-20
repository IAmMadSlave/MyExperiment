require 'test_helper'

class BriteRtBarabasisControllerTest < ActionController::TestCase
  setup do
    @brite_rt_barabasis = brite_rt_barabasis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brite_rt_barabasis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brite_rt_barabasis" do
    assert_difference('BriteRtBarabasi.count') do
      post :create, brite_rt_barabasis: { bwdist: @brite_rt_barabasis.bwdist, bwmax: @brite_rt_barabasis.bwmax, bwmin: @brite_rt_barabasis.bwmin, description: @brite_rt_barabasis.description, generator_id: @brite_rt_barabasis.generator_id, hs: @brite_rt_barabasis.hs, ls: @brite_rt_barabasis.ls, m: @brite_rt_barabasis.m, n: @brite_rt_barabasis.n, name: @brite_rt_barabasis.name, nodeplacement: @brite_rt_barabasis.nodeplacement, status: @brite_rt_barabasis.status, type_id: @brite_rt_barabasis.type_id, user_id: @brite_rt_barabasis.user_id }
    end

    assert_redirected_to brite_rt_barabasis_path(assigns(:brite_rt_barabasis))
  end

  test "should show brite_rt_barabasis" do
    get :show, id: @brite_rt_barabasis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brite_rt_barabasis
    assert_response :success
  end

  test "should update brite_rt_barabasis" do
    patch :update, id: @brite_rt_barabasis, brite_rt_barabasis: { bwdist: @brite_rt_barabasis.bwdist, bwmax: @brite_rt_barabasis.bwmax, bwmin: @brite_rt_barabasis.bwmin, description: @brite_rt_barabasis.description, generator_id: @brite_rt_barabasis.generator_id, hs: @brite_rt_barabasis.hs, ls: @brite_rt_barabasis.ls, m: @brite_rt_barabasis.m, n: @brite_rt_barabasis.n, name: @brite_rt_barabasis.name, nodeplacement: @brite_rt_barabasis.nodeplacement, status: @brite_rt_barabasis.status, type_id: @brite_rt_barabasis.type_id, user_id: @brite_rt_barabasis.user_id }
    assert_redirected_to brite_rt_barabasis_path(assigns(:brite_rt_barabasis))
  end

  test "should destroy brite_rt_barabasis" do
    assert_difference('BriteRtBarabasi.count', -1) do
      delete :destroy, id: @brite_rt_barabasis
    end

    assert_redirected_to brite_rt_barabasis_path
  end
end
