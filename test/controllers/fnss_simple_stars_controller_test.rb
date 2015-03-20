require 'test_helper'

class FnssSimpleStarsControllerTest < ActionController::TestCase
  setup do
    @fnss_simple_star = fnss_simple_stars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnss_simple_stars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnss_simple_star" do
    assert_difference('FnssSimpleStar.count') do
      post :create, fnss_simple_star: { description: @fnss_simple_star.description, generator_id: @fnss_simple_star.generator_id, name: @fnss_simple_star.name, star_node: @fnss_simple_star.star_node, status: @fnss_simple_star.status, type_id: @fnss_simple_star.type_id, user_id: @fnss_simple_star.user_id }
    end

    assert_redirected_to fnss_simple_star_path(assigns(:fnss_simple_star))
  end

  test "should show fnss_simple_star" do
    get :show, id: @fnss_simple_star
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnss_simple_star
    assert_response :success
  end

  test "should update fnss_simple_star" do
    patch :update, id: @fnss_simple_star, fnss_simple_star: { description: @fnss_simple_star.description, generator_id: @fnss_simple_star.generator_id, name: @fnss_simple_star.name, star_node: @fnss_simple_star.star_node, status: @fnss_simple_star.status, type_id: @fnss_simple_star.type_id, user_id: @fnss_simple_star.user_id }
    assert_redirected_to fnss_simple_star_path(assigns(:fnss_simple_star))
  end

  test "should destroy fnss_simple_star" do
    assert_difference('FnssSimpleStar.count', -1) do
      delete :destroy, id: @fnss_simple_star
    end

    assert_redirected_to fnss_simple_stars_path
  end
end
