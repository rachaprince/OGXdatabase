require 'test_helper'

class TraineeshipsControllerTest < ActionController::TestCase
  setup do
    @traineeship = traineeships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:traineeships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create traineeship" do
    assert_difference('Traineeship.count') do
      post :create, traineeship: { end: @traineeship.end, evaluation: @traineeship.evaluation, name: @traineeship.name, notes: @traineeship.notes, start: @traineeship.start }
    end

    assert_redirected_to traineeship_path(assigns(:traineeship))
  end

  test "should show traineeship" do
    get :show, id: @traineeship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @traineeship
    assert_response :success
  end

  test "should update traineeship" do
    patch :update, id: @traineeship, traineeship: { end: @traineeship.end, evaluation: @traineeship.evaluation, name: @traineeship.name, notes: @traineeship.notes, start: @traineeship.start }
    assert_redirected_to traineeship_path(assigns(:traineeship))
  end

  test "should destroy traineeship" do
    assert_difference('Traineeship.count', -1) do
      delete :destroy, id: @traineeship
    end

    assert_redirected_to traineeships_path
  end
end
