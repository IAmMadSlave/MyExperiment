require 'test_helper'

class BriteTdAsbarabasiRtWaxmenControllerTest < ActionController::TestCase
  setup do
    @brite_td_asbarabasi_rt_waxman = brite_td_asbarabasi_rt_waxmen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:brite_td_asbarabasi_rt_waxmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create brite_td_asbarabasi_rt_waxman" do
    assert_difference('BriteTdAsbarabasiRtWaxman.count') do
      post :create, brite_td_asbarabasi_rt_waxman: { bwinter: @brite_td_asbarabasi_rt_waxman.bwinter, bwintermax: @brite_td_asbarabasi_rt_waxman.bwintermax, bwintermin: @brite_td_asbarabasi_rt_waxman.bwintermin, bwintra: @brite_td_asbarabasi_rt_waxman.bwintra, bwintramax: @brite_td_asbarabasi_rt_waxman.bwintramax, bwintramin: @brite_td_asbarabasi_rt_waxman.bwintramin, description: @brite_td_asbarabasi_rt_waxman.description, edgeconn: @brite_td_asbarabasi_rt_waxman.edgeconn, generator_id: @brite_td_asbarabasi_rt_waxman.generator_id, k: @brite_td_asbarabasi_rt_waxman.k, name: @brite_td_asbarabasi_rt_waxman.name, name: @brite_td_asbarabasi_rt_waxman.name, status: @brite_td_asbarabasi_rt_waxman.status, type_id: @brite_td_asbarabasi_rt_waxman.type_id, user_id: @brite_td_asbarabasi_rt_waxman.user_id }
    end

    assert_redirected_to brite_td_asbarabasi_rt_waxman_path(assigns(:brite_td_asbarabasi_rt_waxman))
  end

  test "should show brite_td_asbarabasi_rt_waxman" do
    get :show, id: @brite_td_asbarabasi_rt_waxman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @brite_td_asbarabasi_rt_waxman
    assert_response :success
  end

  test "should update brite_td_asbarabasi_rt_waxman" do
    patch :update, id: @brite_td_asbarabasi_rt_waxman, brite_td_asbarabasi_rt_waxman: { bwinter: @brite_td_asbarabasi_rt_waxman.bwinter, bwintermax: @brite_td_asbarabasi_rt_waxman.bwintermax, bwintermin: @brite_td_asbarabasi_rt_waxman.bwintermin, bwintra: @brite_td_asbarabasi_rt_waxman.bwintra, bwintramax: @brite_td_asbarabasi_rt_waxman.bwintramax, bwintramin: @brite_td_asbarabasi_rt_waxman.bwintramin, description: @brite_td_asbarabasi_rt_waxman.description, edgeconn: @brite_td_asbarabasi_rt_waxman.edgeconn, generator_id: @brite_td_asbarabasi_rt_waxman.generator_id, k: @brite_td_asbarabasi_rt_waxman.k, name: @brite_td_asbarabasi_rt_waxman.name, name: @brite_td_asbarabasi_rt_waxman.name, status: @brite_td_asbarabasi_rt_waxman.status, type_id: @brite_td_asbarabasi_rt_waxman.type_id, user_id: @brite_td_asbarabasi_rt_waxman.user_id }
    assert_redirected_to brite_td_asbarabasi_rt_waxman_path(assigns(:brite_td_asbarabasi_rt_waxman))
  end

  test "should destroy brite_td_asbarabasi_rt_waxman" do
    assert_difference('BriteTdAsbarabasiRtWaxman.count', -1) do
      delete :destroy, id: @brite_td_asbarabasi_rt_waxman
    end

    assert_redirected_to brite_td_asbarabasi_rt_waxmen_path
  end
end
