require 'test_helper'

class FnssSimpleDumbbellsControllerTest < ActionController::TestCase
  setup do
    @fnss_simple_dumbbell = fnss_simple_dumbbells(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fnss_simple_dumbbells)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fnss_simple_dumbbell" do
    assert_difference('FnssSimpleDumbbell.count') do
      post :create, fnss_simple_dumbbell: { description: @fnss_simple_dumbbell.description, generator_id: @fnss_simple_dumbbell.generator_id, mone_nodedumbell: @fnss_simple_dumbbell.mone_nodedumbell, mtwo_nodedumbell: @fnss_simple_dumbbell.mtwo_nodedumbell, name: @fnss_simple_dumbbell.name, status: @fnss_simple_dumbbell.status, type_id: @fnss_simple_dumbbell.type_id, user_id: @fnss_simple_dumbbell.user_id }
    end

    assert_redirected_to fnss_simple_dumbbell_path(assigns(:fnss_simple_dumbbell))
  end

  test "should show fnss_simple_dumbbell" do
    get :show, id: @fnss_simple_dumbbell
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fnss_simple_dumbbell
    assert_response :success
  end

  test "should update fnss_simple_dumbbell" do
    patch :update, id: @fnss_simple_dumbbell, fnss_simple_dumbbell: { description: @fnss_simple_dumbbell.description, generator_id: @fnss_simple_dumbbell.generator_id, mone_nodedumbell: @fnss_simple_dumbbell.mone_nodedumbell, mtwo_nodedumbell: @fnss_simple_dumbbell.mtwo_nodedumbell, name: @fnss_simple_dumbbell.name, status: @fnss_simple_dumbbell.status, type_id: @fnss_simple_dumbbell.type_id, user_id: @fnss_simple_dumbbell.user_id }
    assert_redirected_to fnss_simple_dumbbell_path(assigns(:fnss_simple_dumbbell))
  end

  test "should destroy fnss_simple_dumbbell" do
    assert_difference('FnssSimpleDumbbell.count', -1) do
      delete :destroy, id: @fnss_simple_dumbbell
    end

    assert_redirected_to fnss_simple_dumbbells_path
  end
end
