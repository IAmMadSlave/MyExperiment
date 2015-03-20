require 'test_helper'

class BriteAsWaxmenControllerTest < ActionController::TestCase
  setup do
    @brite_as_waxman = brite_as_waxmen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brite_as_waxmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brite_as_waxman" do
    assert_difference('BriteAsWaxman.count') do
      post :create, brite_as_waxman: { alpha: @brite_as_waxman.alpha, beta: @brite_as_waxman.beta, bwdist: @brite_as_waxman.bwdist, bwmax: @brite_as_waxman.bwmax, bwmin: @brite_as_waxman.bwmin, description: @brite_as_waxman.description, generator_id: @brite_as_waxman.generator_id, growth_type: @brite_as_waxman.growth_type, hs: @brite_as_waxman.hs, ls: @brite_as_waxman.ls, m: @brite_as_waxman.m, n: @brite_as_waxman.n, name: @brite_as_waxman.name, nodeplacement: @brite_as_waxman.nodeplacement, status: @brite_as_waxman.status, type_id: @brite_as_waxman.type_id, user_id: @brite_as_waxman.user_id }
    end

    assert_redirected_to brite_as_waxman_path(assigns(:brite_as_waxman))
  end

  test "should show brite_as_waxman" do
    get :show, id: @brite_as_waxman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brite_as_waxman
    assert_response :success
  end

  test "should update brite_as_waxman" do
    patch :update, id: @brite_as_waxman, brite_as_waxman: { alpha: @brite_as_waxman.alpha, beta: @brite_as_waxman.beta, bwdist: @brite_as_waxman.bwdist, bwmax: @brite_as_waxman.bwmax, bwmin: @brite_as_waxman.bwmin, description: @brite_as_waxman.description, generator_id: @brite_as_waxman.generator_id, growth_type: @brite_as_waxman.growth_type, hs: @brite_as_waxman.hs, ls: @brite_as_waxman.ls, m: @brite_as_waxman.m, n: @brite_as_waxman.n, name: @brite_as_waxman.name, nodeplacement: @brite_as_waxman.nodeplacement, status: @brite_as_waxman.status, type_id: @brite_as_waxman.type_id, user_id: @brite_as_waxman.user_id }
    assert_redirected_to brite_as_waxman_path(assigns(:brite_as_waxman))
  end

  test "should destroy brite_as_waxman" do
    assert_difference('BriteAsWaxman.count', -1) do
      delete :destroy, id: @brite_as_waxman
    end

    assert_redirected_to brite_as_waxmen_path
  end
end
