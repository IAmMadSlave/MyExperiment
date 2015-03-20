require 'test_helper'

class BriteTdAswaxmanRtWaxmenControllerTest < ActionController::TestCase
  setup do
    @brite_td_aswaxman_rt_waxman = brite_td_aswaxman_rt_waxmen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brite_td_aswaxman_rt_waxmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brite_td_aswaxman_rt_waxman" do
    assert_difference('BriteTdAswaxmanRtWaxman.count') do
      post :create, brite_td_aswaxman_rt_waxman: { alpha: @brite_td_aswaxman_rt_waxman.alpha, alpha_waxman: @brite_td_aswaxman_rt_waxman.alpha_waxman, beta: @brite_td_aswaxman_rt_waxman.beta, beta_waxman: @brite_td_aswaxman_rt_waxman.beta_waxman, bwdist: @brite_td_aswaxman_rt_waxman.bwdist, bwdist_waxman: @brite_td_aswaxman_rt_waxman.bwdist_waxman, bwinter: @brite_td_aswaxman_rt_waxman.bwinter, bwintermax: @brite_td_aswaxman_rt_waxman.bwintermax, bwintermin: @brite_td_aswaxman_rt_waxman.bwintermin, bwintra: @brite_td_aswaxman_rt_waxman.bwintra, bwintramax: @brite_td_aswaxman_rt_waxman.bwintramax, bwintramin: @brite_td_aswaxman_rt_waxman.bwintramin, bwmax: @brite_td_aswaxman_rt_waxman.bwmax, bwmax_waxman: @brite_td_aswaxman_rt_waxman.bwmax_waxman, bwmin: @brite_td_aswaxman_rt_waxman.bwmin, bwmin_waxman: @brite_td_aswaxman_rt_waxman.bwmin_waxman, edgeconn: @brite_td_aswaxman_rt_waxman.edgeconn, growthtype: @brite_td_aswaxman_rt_waxman.growthtype, growthtype_waxman: @brite_td_aswaxman_rt_waxman.growthtype_waxman, hs: @brite_td_aswaxman_rt_waxman.hs, hs_waxman: @brite_td_aswaxman_rt_waxman.hs_waxman, k: @brite_td_aswaxman_rt_waxman.k, ls: @brite_td_aswaxman_rt_waxman.ls, ls_waxman: @brite_td_aswaxman_rt_waxman.ls_waxman, m: @brite_td_aswaxman_rt_waxman.m, m_waxman: @brite_td_aswaxman_rt_waxman.m_waxman, n: @brite_td_aswaxman_rt_waxman.n, n_waxman: @brite_td_aswaxman_rt_waxman.n_waxman, name: @brite_td_aswaxman_rt_waxman.name, name: @brite_td_aswaxman_rt_waxman.name, name_rtwaxman: @brite_td_aswaxman_rt_waxman.name_rtwaxman, nodeplacement: @brite_td_aswaxman_rt_waxman.nodeplacement, nodeplacement: @brite_td_aswaxman_rt_waxman.nodeplacement }
    end

    assert_redirected_to brite_td_aswaxman_rt_waxman_path(assigns(:brite_td_aswaxman_rt_waxman))
  end

  test "should show brite_td_aswaxman_rt_waxman" do
    get :show, id: @brite_td_aswaxman_rt_waxman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brite_td_aswaxman_rt_waxman
    assert_response :success
  end

  test "should update brite_td_aswaxman_rt_waxman" do
    patch :update, id: @brite_td_aswaxman_rt_waxman, brite_td_aswaxman_rt_waxman: { alpha: @brite_td_aswaxman_rt_waxman.alpha, alpha_waxman: @brite_td_aswaxman_rt_waxman.alpha_waxman, beta: @brite_td_aswaxman_rt_waxman.beta, beta_waxman: @brite_td_aswaxman_rt_waxman.beta_waxman, bwdist: @brite_td_aswaxman_rt_waxman.bwdist, bwdist_waxman: @brite_td_aswaxman_rt_waxman.bwdist_waxman, bwinter: @brite_td_aswaxman_rt_waxman.bwinter, bwintermax: @brite_td_aswaxman_rt_waxman.bwintermax, bwintermin: @brite_td_aswaxman_rt_waxman.bwintermin, bwintra: @brite_td_aswaxman_rt_waxman.bwintra, bwintramax: @brite_td_aswaxman_rt_waxman.bwintramax, bwintramin: @brite_td_aswaxman_rt_waxman.bwintramin, bwmax: @brite_td_aswaxman_rt_waxman.bwmax, bwmax_waxman: @brite_td_aswaxman_rt_waxman.bwmax_waxman, bwmin: @brite_td_aswaxman_rt_waxman.bwmin, bwmin_waxman: @brite_td_aswaxman_rt_waxman.bwmin_waxman, edgeconn: @brite_td_aswaxman_rt_waxman.edgeconn, growthtype: @brite_td_aswaxman_rt_waxman.growthtype, growthtype_waxman: @brite_td_aswaxman_rt_waxman.growthtype_waxman, hs: @brite_td_aswaxman_rt_waxman.hs, hs_waxman: @brite_td_aswaxman_rt_waxman.hs_waxman, k: @brite_td_aswaxman_rt_waxman.k, ls: @brite_td_aswaxman_rt_waxman.ls, ls_waxman: @brite_td_aswaxman_rt_waxman.ls_waxman, m: @brite_td_aswaxman_rt_waxman.m, m_waxman: @brite_td_aswaxman_rt_waxman.m_waxman, n: @brite_td_aswaxman_rt_waxman.n, n_waxman: @brite_td_aswaxman_rt_waxman.n_waxman, name: @brite_td_aswaxman_rt_waxman.name, name: @brite_td_aswaxman_rt_waxman.name, name_rtwaxman: @brite_td_aswaxman_rt_waxman.name_rtwaxman, nodeplacement: @brite_td_aswaxman_rt_waxman.nodeplacement, nodeplacement: @brite_td_aswaxman_rt_waxman.nodeplacement }
    assert_redirected_to brite_td_aswaxman_rt_waxman_path(assigns(:brite_td_aswaxman_rt_waxman))
  end

  test "should destroy brite_td_aswaxman_rt_waxman" do
    assert_difference('BriteTdAswaxmanRtWaxman.count', -1) do
      delete :destroy, id: @brite_td_aswaxman_rt_waxman
    end

    assert_redirected_to brite_td_aswaxman_rt_waxmen_path
  end
end
