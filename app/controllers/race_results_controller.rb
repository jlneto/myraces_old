class RaceResultsController < ApplicationController
  def index
    @race_results = RaceResult.all
  end

  def show
    @race_result = RaceResult.find(params[:id])
  end

  def new
    @race_result = RaceResult.new
  end

  def create
    @race_result = RaceResult.new(params[:race_result])
    if @race_result.save
      redirect_to @race_result, :notice => "Successfully created race result."
    else
      render :action => 'new'
    end
  end

  def edit
    @race_result = RaceResult.find(params[:id])
  end

  def update
    @race_result = RaceResult.find(params[:id])
    if @race_result.update_attributes(params[:race_result])
      redirect_to @race_result, :notice  => "Successfully updated race result."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @race_result = RaceResult.find(params[:id])
    @race_result.destroy
    redirect_to race_results_url, :notice => "Successfully destroyed race result."
  end
end
