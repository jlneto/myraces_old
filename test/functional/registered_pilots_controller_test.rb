require 'test_helper'

class RegisteredPilotsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => RegisteredPilot.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    RegisteredPilot.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    RegisteredPilot.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to registered_pilot_url(assigns(:registered_pilot))
  end

  def test_edit
    get :edit, :id => RegisteredPilot.first
    assert_template 'edit'
  end

  def test_update_invalid
    RegisteredPilot.any_instance.stubs(:valid?).returns(false)
    put :update, :id => RegisteredPilot.first
    assert_template 'edit'
  end

  def test_update_valid
    RegisteredPilot.any_instance.stubs(:valid?).returns(true)
    put :update, :id => RegisteredPilot.first
    assert_redirected_to registered_pilot_url(assigns(:registered_pilot))
  end

  def test_destroy
    registered_pilot = RegisteredPilot.first
    delete :destroy, :id => registered_pilot
    assert_redirected_to registered_pilots_url
    assert !RegisteredPilot.exists?(registered_pilot.id)
  end
end
