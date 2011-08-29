class ChampionshipResultsController < ApplicationController
  def index
    @championship_results = ChampionshipResult.all
  end

  def show
    @championship_result = ChampionshipResult.find(params[:id])
  end

  def new
    @championship_result = ChampionshipResult.new
  end

  def create
    @championship_result = ChampionshipResult.new(params[:championship_result])
    if @championship_result.save
      redirect_to @championship_result, :notice => "Successfully created championship result."
    else
      render :action => 'new'
    end
  end

  def edit
    @championship_result = ChampionshipResult.find(params[:id])
  end

  def update
    @championship_result = ChampionshipResult.find(params[:id])
    if @championship_result.update_attributes(params[:championship_result])
      redirect_to @championship_result, :notice  => "Successfully updated championship result."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @championship_result = ChampionshipResult.find(params[:id])
    @championship_result.destroy
    redirect_to championship_results_url, :notice => "Successfully destroyed championship result."
  end
end
