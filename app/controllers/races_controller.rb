class RacesController < ApplicationController
  def index
    @races = Race.all
  end

  def show
    @race = Race.find(params[:id])
  end

  def new
    @race = Race.new
  end

  def create
    @race = Race.new(params[:race])
    if @race.save
      redirect_to @race, :notice => "Successfully created race."
    else
      render :action => 'new'
    end
  end

  def edit
    @race = Race.find(params[:id])
  end

  def update
    @race = Race.find(params[:id])
    if @race.update_attributes(params[:race])
      redirect_to @race, :notice  => "Successfully updated race."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @race = Race.find(params[:id])
    @race.destroy
    redirect_to races_url, :notice => "Successfully destroyed race."
  end
end
