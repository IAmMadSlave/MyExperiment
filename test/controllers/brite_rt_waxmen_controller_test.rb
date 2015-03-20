require 'test_helper'

class BriteRtWaxmenControllerTest < ActionController::TestCase
  setup do
    @brite_rt_waxman = brite_rt_waxmen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brite_rt_waxmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brite_rt_waxman" do
    assert_difference('BriteRtWaxman.count') do
      post :create, brite_rt_waxman: { alpha: @brite_rt_waxman.alpha, beta: @brite_rt_waxman.beta, bwdist: @brite_rt_waxman.bwdist, bwmax: @brite_rt_waxman.bwmax, bwmin: @brite_rt_waxman.bwmin, description: @brite_rt_waxman.description, generator_id: @brite_rt_waxman.generator_id, growth_type: @brite_rt_waxman.growth_type, hs: @brite_rt_waxman.hs, ls: @brite_rt_waxman.ls, m: @brite_rt_waxman.m, n: @brite_rt_waxman.n, name: @brite_rt_waxman.name, name: @brite_rt_waxman.name, nodeplacement: @brite_rt_waxman.nodeplacement, status: @brite_rt_waxman.status, type_id: @brite_rt_waxman.type_id, user_id: @brite_rt_waxman.user_id }
    end

    assert_redirected_to brite_rt_waxman_path(assigns(:brite_rt_waxman))
  end

  test "should show brite_rt_waxman" do
    get :show, id: @brite_rt_waxman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brite_rt_waxman
    assert_response :success
  end

  test "should update brite_rt_waxman" do
    patch :update, id: @brite_rt_waxman, brite_rt_waxman: { alpha: @brite_rt_waxman.alpha, beta: @brite_rt_waxman.beta, bwdist: @brite_rt_waxman.bwdist, bwmax: @brite_rt_waxman.bwmax, bwmin: @brite_rt_waxman.bwmin, description: @brite_rt_waxman.description, generator_id: @brite_rt_waxman.generator_id, growth_type: @brite_rt_waxman.growth_type, hs: @brite_rt_waxman.hs, ls: @brite_rt_waxman.ls, m: @brite_rt_waxman.m, n: @brite_rt_waxman.n, name: @brite_rt_waxman.name, name: @brite_rt_waxman.name, nodeplacement: @brite_rt_waxman.nodeplacement, status: @brite_rt_waxman.status, type_id: @brite_rt_waxman.type_id, user_id: @brite_rt_waxman.user_id }
    assert_redirected_to brite_rt_waxman_path(assigns(:brite_rt_waxman))
  end

  test "should destroy brite_rt_waxman" do
    assert_difference('BriteRtWaxman.count', -1) do
      delete :destroy, id: @brite_rt_waxman
    end

    assert_redirected_to brite_rt_waxmen_path
  end
end
