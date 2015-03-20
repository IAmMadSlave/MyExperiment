require 'test_helper'

class FnssSimpleFullMeshesControllerTest < ActionController::TestCase
  setup do
    @fnss_simple_full_mesh = fnss_simple_full_meshes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnss_simple_full_meshes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnss_simple_full_mesh" do
    assert_difference('FnssSimpleFullMesh.count') do
      post :create, fnss_simple_full_mesh: { description: @fnss_simple_full_mesh.description, full_mesh_node: @fnss_simple_full_mesh.full_mesh_node, generator_id: @fnss_simple_full_mesh.generator_id, name: @fnss_simple_full_mesh.name, status: @fnss_simple_full_mesh.status, type_id: @fnss_simple_full_mesh.type_id, user_id: @fnss_simple_full_mesh.user_id }
    end

    assert_redirected_to fnss_simple_full_mesh_path(assigns(:fnss_simple_full_mesh))
  end

  test "should show fnss_simple_full_mesh" do
    get :show, id: @fnss_simple_full_mesh
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnss_simple_full_mesh
    assert_response :success
  end

  test "should update fnss_simple_full_mesh" do
    patch :update, id: @fnss_simple_full_mesh, fnss_simple_full_mesh: { description: @fnss_simple_full_mesh.description, full_mesh_node: @fnss_simple_full_mesh.full_mesh_node, generator_id: @fnss_simple_full_mesh.generator_id, name: @fnss_simple_full_mesh.name, status: @fnss_simple_full_mesh.status, type_id: @fnss_simple_full_mesh.type_id, user_id: @fnss_simple_full_mesh.user_id }
    assert_redirected_to fnss_simple_full_mesh_path(assigns(:fnss_simple_full_mesh))
  end

  test "should destroy fnss_simple_full_mesh" do
    assert_difference('FnssSimpleFullMesh.count', -1) do
      delete :destroy, id: @fnss_simple_full_mesh
    end

    assert_redirected_to fnss_simple_full_meshes_path
  end
end
