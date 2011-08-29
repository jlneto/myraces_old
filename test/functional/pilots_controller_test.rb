require 'test_helper'

class PilotsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => Pilot.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Pilot.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Pilot.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to pilot_url(assigns(:pilot))
  end

  def test_edit
    get :edit, :id => Pilot.first
    assert_template 'edit'
  end

  def test_update_invalid
    Pilot.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Pilot.first
    assert_template 'edit'
  end

  def test_update_valid
    Pilot.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Pilot.first
    assert_redirected_to pilot_url(assigns(:pilot))
  end

  def test_destroy
    pilot = Pilot.first
    delete :destroy, :id => pilot
    assert_redirected_to pilots_url
    assert !Pilot.exists?(pilot.id)
  end
end
