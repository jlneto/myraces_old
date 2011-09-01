require 'test_helper'

class ChampionshipPilotsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ChampionshipPilot.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ChampionshipPilot.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ChampionshipPilot.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to championship_pilot_url(assigns(:championship_pilot))
  end

  def test_edit
    get :edit, :id => ChampionshipPilot.first
    assert_template 'edit'
  end

  def test_update_invalid
    ChampionshipPilot.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ChampionshipPilot.first
    assert_template 'edit'
  end

  def test_update_valid
    ChampionshipPilot.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ChampionshipPilot.first
    assert_redirected_to championship_pilot_url(assigns(:championship_pilot))
  end

  def test_destroy
    championship_pilot = ChampionshipPilot.first
    delete :destroy, :id => championship_pilot
    assert_redirected_to championship_pilots_url
    assert !ChampionshipPilot.exists?(championship_pilot.id)
  end
end
