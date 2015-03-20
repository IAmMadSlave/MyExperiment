require 'test_helper'

class FnssDatacenterThreeTiersControllerTest < ActionController::TestCase
  setup do
    @fnss_datacenter_three_tier = fnss_datacenter_three_tiers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnss_datacenter_three_tiers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnss_datacenter_three_tier" do
    assert_difference('FnssDatacenterThreeTier.count') do
      post :create, fnss_datacenter_three_tier: { description: @fnss_datacenter_three_tier.description, generator_id: @fnss_datacenter_three_tier.generator_id, n_aggregationthree_tier: @fnss_datacenter_three_tier.n_aggregationthree_tier, n_corethree_tier: @fnss_datacenter_three_tier.n_corethree_tier, n_edgesthree_tier: @fnss_datacenter_three_tier.n_edgesthree_tier, n_hoststhree_tier: @fnss_datacenter_three_tier.n_hoststhree_tier, name: @fnss_datacenter_three_tier.name, status: @fnss_datacenter_three_tier.status, type_id: @fnss_datacenter_three_tier.type_id, user_id: @fnss_datacenter_three_tier.user_id }
    end

    assert_redirected_to fnss_datacenter_three_tier_path(assigns(:fnss_datacenter_three_tier))
  end

  test "should show fnss_datacenter_three_tier" do
    get :show, id: @fnss_datacenter_three_tier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnss_datacenter_three_tier
    assert_response :success
  end

  test "should update fnss_datacenter_three_tier" do
    patch :update, id: @fnss_datacenter_three_tier, fnss_datacenter_three_tier: { description: @fnss_datacenter_three_tier.description, generator_id: @fnss_datacenter_three_tier.generator_id, n_aggregationthree_tier: @fnss_datacenter_three_tier.n_aggregationthree_tier, n_corethree_tier: @fnss_datacenter_three_tier.n_corethree_tier, n_edgesthree_tier: @fnss_datacenter_three_tier.n_edgesthree_tier, n_hoststhree_tier: @fnss_datacenter_three_tier.n_hoststhree_tier, name: @fnss_datacenter_three_tier.name, status: @fnss_datacenter_three_tier.status, type_id: @fnss_datacenter_three_tier.type_id, user_id: @fnss_datacenter_three_tier.user_id }
    assert_redirected_to fnss_datacenter_three_tier_path(assigns(:fnss_datacenter_three_tier))
  end

  test "should destroy fnss_datacenter_three_tier" do
    assert_difference('FnssDatacenterThreeTier.count', -1) do
      delete :destroy, id: @fnss_datacenter_three_tier
    end

    assert_redirected_to fnss_datacenter_three_tiers_path
  end
end
