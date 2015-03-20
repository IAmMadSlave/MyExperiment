require 'test_helper'

class CreateFnssSimpleRingsControllerTest < ActionController::TestCase
  setup do
    @create_fnss_simple_ring = create_fnss_simple_rings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:create_fnss_simple_rings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create create_fnss_simple_ring" do
    assert_difference('CreateFnssSimpleRing.count') do
      post :create, create_fnss_simple_ring: { n: @create_fnss_simple_ring.n }
    end

    assert_redirected_to create_fnss_simple_ring_path(assigns(:create_fnss_simple_ring))
  end

  test "should show create_fnss_simple_ring" do
    get :show, id: @create_fnss_simple_ring
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @create_fnss_simple_ring
    assert_response :success
  end

  test "should update create_fnss_simple_ring" do
    patch :update, id: @create_fnss_simple_ring, create_fnss_simple_ring: { n: @create_fnss_simple_ring.n }
    assert_redirected_to create_fnss_simple_ring_path(assigns(:create_fnss_simple_ring))
  end

  test "should destroy create_fnss_simple_ring" do
    assert_difference('CreateFnssSimpleRing.count', -1) do
      delete :destroy, id: @create_fnss_simple_ring
    end

    assert_redirected_to create_fnss_simple_rings_path
  end
end
