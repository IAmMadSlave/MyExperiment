require 'test_helper'

class FnssDatacenterFattreesControllerTest < ActionController::TestCase
  setup do
    @fnss_datacenter_fattree = fnss_datacenter_fattrees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnss_datacenter_fattrees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnss_datacenter_fattree" do
    assert_difference('FnssDatacenterFattree.count') do
      post :create, fnss_datacenter_fattree: { description: @fnss_datacenter_fattree.description, generator_id: @fnss_datacenter_fattree.generator_id, k_fattree: @fnss_datacenter_fattree.k_fattree, name: @fnss_datacenter_fattree.name, status: @fnss_datacenter_fattree.status, type_id: @fnss_datacenter_fattree.type_id, user_id: @fnss_datacenter_fattree.user_id }
    end

    assert_redirected_to fnss_datacenter_fattree_path(assigns(:fnss_datacenter_fattree))
  end

  test "should show fnss_datacenter_fattree" do
    get :show, id: @fnss_datacenter_fattree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnss_datacenter_fattree
    assert_response :success
  end

  test "should update fnss_datacenter_fattree" do
    patch :update, id: @fnss_datacenter_fattree, fnss_datacenter_fattree: { description: @fnss_datacenter_fattree.description, generator_id: @fnss_datacenter_fattree.generator_id, k_fattree: @fnss_datacenter_fattree.k_fattree, name: @fnss_datacenter_fattree.name, status: @fnss_datacenter_fattree.status, type_id: @fnss_datacenter_fattree.type_id, user_id: @fnss_datacenter_fattree.user_id }
    assert_redirected_to fnss_datacenter_fattree_path(assigns(:fnss_datacenter_fattree))
  end

  test "should destroy fnss_datacenter_fattree" do
    assert_difference('FnssDatacenterFattree.count', -1) do
      delete :destroy, id: @fnss_datacenter_fattree
    end

    assert_redirected_to fnss_datacenter_fattrees_path
  end
end
