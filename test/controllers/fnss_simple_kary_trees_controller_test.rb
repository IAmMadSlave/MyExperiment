require 'test_helper'

class FnssSimpleKaryTreesControllerTest < ActionController::TestCase
  setup do
    @fnss_simple_kary_tree = fnss_simple_kary_trees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnss_simple_kary_trees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnss_simple_kary_tree" do
    assert_difference('FnssSimpleKaryTree.count') do
      post :create, fnss_simple_kary_tree: { description: @fnss_simple_kary_tree.description, generator_id: @fnss_simple_kary_tree.generator_id, k_branching_factor: @fnss_simple_kary_tree.k_branching_factor, name: @fnss_simple_kary_tree.name, status: @fnss_simple_kary_tree.status, type_id: @fnss_simple_kary_tree.type_id, user_id: @fnss_simple_kary_tree.user_id }
    end

    assert_redirected_to fnss_simple_kary_tree_path(assigns(:fnss_simple_kary_tree))
  end

  test "should show fnss_simple_kary_tree" do
    get :show, id: @fnss_simple_kary_tree
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnss_simple_kary_tree
    assert_response :success
  end

  test "should update fnss_simple_kary_tree" do
    patch :update, id: @fnss_simple_kary_tree, fnss_simple_kary_tree: { description: @fnss_simple_kary_tree.description, generator_id: @fnss_simple_kary_tree.generator_id, k_branching_factor: @fnss_simple_kary_tree.k_branching_factor, name: @fnss_simple_kary_tree.name, status: @fnss_simple_kary_tree.status, type_id: @fnss_simple_kary_tree.type_id, user_id: @fnss_simple_kary_tree.user_id }
    assert_redirected_to fnss_simple_kary_tree_path(assigns(:fnss_simple_kary_tree))
  end

  test "should destroy fnss_simple_kary_tree" do
    assert_difference('FnssSimpleKaryTree.count', -1) do
      delete :destroy, id: @fnss_simple_kary_tree
    end

    assert_redirected_to fnss_simple_kary_trees_path
  end
end
