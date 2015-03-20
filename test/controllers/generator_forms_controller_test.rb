require 'test_helper'

class GeneratorFormsControllerTest < ActionController::TestCase
  setup do
    @generator_form = generator_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:generator_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create generator_form" do
    assert_difference('GeneratorForm.count') do
      post :create, generator_form: { description: @generator_form.description, generator_id: @generator_form.generator_id, name: @generator_form.name, status: @generator_form.status, type_id: @generator_form.type_id, user_id: @generator_form.user_id }
    end

    assert_redirected_to generator_form_path(assigns(:generator_form))
  end

  test "should show generator_form" do
    get :show, id: @generator_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @generator_form
    assert_response :success
  end

  test "should update generator_form" do
    patch :update, id: @generator_form, generator_form: { description: @generator_form.description, generator_id: @generator_form.generator_id, name: @generator_form.name, status: @generator_form.status, type_id: @generator_form.type_id, user_id: @generator_form.user_id }
    assert_redirected_to generator_form_path(assigns(:generator_form))
  end

  test "should destroy generator_form" do
    assert_difference('GeneratorForm.count', -1) do
      delete :destroy, id: @generator_form
    end

    assert_redirected_to generator_forms_path
  end
end
