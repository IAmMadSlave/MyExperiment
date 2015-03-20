require 'test_helper'

class FnssDatacenterTwoTiersControllerTest < ActionController::TestCase
  setup do
    @fnss_datacenter_two_tier = fnss_datacenter_two_tiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnss_datacenter_two_tiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnss_datacenter_two_tier" do
    assert_difference('FnssDatacenterTwoTier.count') do
      post :create, fnss_datacenter_two_tier: { description: @fnss_datacenter_two_tier.description, generator_id: @fnss_datacenter_two_tier.generator_id, h_hoststwo_tier: @fnss_datacenter_two_tier.h_hoststwo_tier, n_coretwo_tier: @fnss_datacenter_two_tier.n_coretwo_tier, n_edgetwo_tier: @fnss_datacenter_two_tier.n_edgetwo_tier, name: @fnss_datacenter_two_tier.name, status: @fnss_datacenter_two_tier.status, type_id: @fnss_datacenter_two_tier.type_id, user_id: @fnss_datacenter_two_tier.user_id }
    end

    assert_redirected_to fnss_datacenter_two_tier_path(assigns(:fnss_datacenter_two_tier))
  end

  test "should show fnss_datacenter_two_tier" do
    get :show, id: @fnss_datacenter_two_tier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnss_datacenter_two_tier
    assert_response :success
  end

  test "should update fnss_datacenter_two_tier" do
    patch :update, id: @fnss_datacenter_two_tier, fnss_datacenter_two_tier: { description: @fnss_datacenter_two_tier.description, generator_id: @fnss_datacenter_two_tier.generator_id, h_hoststwo_tier: @fnss_datacenter_two_tier.h_hoststwo_tier, n_coretwo_tier: @fnss_datacenter_two_tier.n_coretwo_tier, n_edgetwo_tier: @fnss_datacenter_two_tier.n_edgetwo_tier, name: @fnss_datacenter_two_tier.name, status: @fnss_datacenter_two_tier.status, type_id: @fnss_datacenter_two_tier.type_id, user_id: @fnss_datacenter_two_tier.user_id }
    assert_redirected_to fnss_datacenter_two_tier_path(assigns(:fnss_datacenter_two_tier))
  end

  test "should destroy fnss_datacenter_two_tier" do
    assert_difference('FnssDatacenterTwoTier.count', -1) do
      delete :destroy, id: @fnss_datacenter_two_tier
    end

    assert_redirected_to fnss_datacenter_two_tiers_path
  end
end
