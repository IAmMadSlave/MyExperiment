require 'test_helper'

class FnssDatacenterBcubesControllerTest < ActionController::TestCase
  setup do
    @fnss_datacenter_bcube = fnss_datacenter_bcubes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnss_datacenter_bcubes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnss_datacenter_bcube" do
    assert_difference('FnssDatacenterBcube.count') do
      post :create, fnss_datacenter_bcube: { description: @fnss_datacenter_bcube.description, generator_id: @fnss_datacenter_bcube.generator_id, k_bcube: @fnss_datacenter_bcube.k_bcube, n_bcube: @fnss_datacenter_bcube.n_bcube, name: @fnss_datacenter_bcube.name, status: @fnss_datacenter_bcube.status, type_id: @fnss_datacenter_bcube.type_id, user_id: @fnss_datacenter_bcube.user_id }
    end

    assert_redirected_to fnss_datacenter_bcube_path(assigns(:fnss_datacenter_bcube))
  end

  test "should show fnss_datacenter_bcube" do
    get :show, id: @fnss_datacenter_bcube
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnss_datacenter_bcube
    assert_response :success
  end

  test "should update fnss_datacenter_bcube" do
    patch :update, id: @fnss_datacenter_bcube, fnss_datacenter_bcube: { description: @fnss_datacenter_bcube.description, generator_id: @fnss_datacenter_bcube.generator_id, k_bcube: @fnss_datacenter_bcube.k_bcube, n_bcube: @fnss_datacenter_bcube.n_bcube, name: @fnss_datacenter_bcube.name, status: @fnss_datacenter_bcube.status, type_id: @fnss_datacenter_bcube.type_id, user_id: @fnss_datacenter_bcube.user_id }
    assert_redirected_to fnss_datacenter_bcube_path(assigns(:fnss_datacenter_bcube))
  end

  test "should destroy fnss_datacenter_bcube" do
    assert_difference('FnssDatacenterBcube.count', -1) do
      delete :destroy, id: @fnss_datacenter_bcube
    end

    assert_redirected_to fnss_datacenter_bcubes_path
  end
end
