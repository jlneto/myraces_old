require 'test_helper'

class RaceResultsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => RaceResult.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    RaceResult.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    RaceResult.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to race_result_url(assigns(:race_result))
  end

  def test_edit
    get :edit, :id => RaceResult.first
    assert_template 'edit'
  end

  def test_update_invalid
    RaceResult.any_instance.stubs(:valid?).returns(false)
    put :update, :id => RaceResult.first
    assert_template 'edit'
  end

  def test_update_valid
    RaceResult.any_instance.stubs(:valid?).returns(true)
    put :update, :id => RaceResult.first
    assert_redirected_to race_result_url(assigns(:race_result))
  end

  def test_destroy
    race_result = RaceResult.first
    delete :destroy, :id => race_result
    assert_redirected_to race_results_url
    assert !RaceResult.exists?(race_result.id)
  end
end
