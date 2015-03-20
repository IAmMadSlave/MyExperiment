require 'test_helper'

class FnssSimpleLinesControllerTest < ActionController::TestCase
  setup do
    @fnss_simple_line = fnss_simple_lines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnss_simple_lines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnss_simple_line" do
    assert_difference('FnssSimpleLine.count') do
      post :create, fnss_simple_line: { description: @fnss_simple_line.description, generator_id: @fnss_simple_line.generator_id, line_node: @fnss_simple_line.line_node, name: @fnss_simple_line.name, status: @fnss_simple_line.status, type_id: @fnss_simple_line.type_id, user_id: @fnss_simple_line.user_id }
    end

    assert_redirected_to fnss_simple_line_path(assigns(:fnss_simple_line))
  end

  test "should show fnss_simple_line" do
    get :show, id: @fnss_simple_line
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnss_simple_line
    assert_response :success
  end

  test "should update fnss_simple_line" do
    patch :update, id: @fnss_simple_line, fnss_simple_line: { description: @fnss_simple_line.description, generator_id: @fnss_simple_line.generator_id, line_node: @fnss_simple_line.line_node, name: @fnss_simple_line.name, status: @fnss_simple_line.status, type_id: @fnss_simple_line.type_id, user_id: @fnss_simple_line.user_id }
    assert_redirected_to fnss_simple_line_path(assigns(:fnss_simple_line))
  end

  test "should destroy fnss_simple_line" do
    assert_difference('FnssSimpleLine.count', -1) do
      delete :destroy, id: @fnss_simple_line
    end

    assert_redirected_to fnss_simple_lines_path
  end
end
