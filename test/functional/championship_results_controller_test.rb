require 'test_helper'

class ChampionshipResultsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => ChampionshipResult.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    ChampionshipResult.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    ChampionshipResult.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to championship_result_url(assigns(:championship_result))
  end

  def test_edit
    get :edit, :id => ChampionshipResult.first
    assert_template 'edit'
  end

  def test_update_invalid
    ChampionshipResult.any_instance.stubs(:valid?).returns(false)
    put :update, :id => ChampionshipResult.first
    assert_template 'edit'
  end

  def test_update_valid
    ChampionshipResult.any_instance.stubs(:valid?).returns(true)
    put :update, :id => ChampionshipResult.first
    assert_redirected_to championship_result_url(assigns(:championship_result))
  end

  def test_destroy
    championship_result = ChampionshipResult.first
    delete :destroy, :id => championship_result
    assert_redirected_to championship_results_url
    assert !ChampionshipResult.exists?(championship_result.id)
  end
end
