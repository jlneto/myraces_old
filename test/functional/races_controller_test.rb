require 'test_helper'

class RacesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Race.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Race.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Race.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to race_url(assigns(:race))
  end

  def test_edit
    get :edit, :id => Race.first
    assert_template 'edit'
  end

  def test_update_invalid
    Race.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Race.first
    assert_template 'edit'
  end

  def test_update_valid
    Race.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Race.first
    assert_redirected_to race_url(assigns(:race))
  end

  def test_destroy
    race = Race.first
    delete :destroy, :id => race
    assert_redirected_to races_url
    assert !Race.exists?(race.id)
  end
end
