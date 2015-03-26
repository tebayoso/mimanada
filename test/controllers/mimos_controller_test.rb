require 'test_helper'

class MimosControllerTest < ActionController::TestCase
  setup do
    @mimo = mimos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mimos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mimo" do
    assert_difference('Mimo.count') do
      post :create, mimo: { age: @mimo.age, case: @mimo.case, city: @mimo.city, color1: @mimo.color1, color2: @mimo.color2, coordinates: @mimo.coordinates, country: @mimo.country, description: @mimo.description, gender: @mimo.gender, name: @mimo.name, race: @mimo.race, size: @mimo.size, state: @mimo.state, street: @mimo.street, title: @mimo.title }
    end

    assert_redirected_to mimo_path(assigns(:mimo))
  end

  test "should show mimo" do
    get :show, id: @mimo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mimo
    assert_response :success
  end

  test "should update mimo" do
    patch :update, id: @mimo, mimo: { age: @mimo.age, case: @mimo.case, city: @mimo.city, color1: @mimo.color1, color2: @mimo.color2, coordinates: @mimo.coordinates, country: @mimo.country, description: @mimo.description, gender: @mimo.gender, name: @mimo.name, race: @mimo.race, size: @mimo.size, state: @mimo.state, street: @mimo.street, title: @mimo.title }
    assert_redirected_to mimo_path(assigns(:mimo))
  end

  test "should destroy mimo" do
    assert_difference('Mimo.count', -1) do
      delete :destroy, id: @mimo
    end

    assert_redirected_to mimos_path
  end
end
