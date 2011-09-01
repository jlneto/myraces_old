class ChampionshipPilotsController < ApplicationController
  def index
    @championship_pilots = ChampionshipPilot.all
  end

  def show
    @championship_pilot = ChampionshipPilot.find(params[:id])
  end

  def new
    @championship_pilot = ChampionshipPilot.new
  end

  def create
    @championship_pilot = ChampionshipPilot.new(params[:championship_pilot])
    if @championship_pilot.save
      redirect_to @championship_pilot, :notice => "Successfully created championship pilot."
    else
      render :action => 'new'
    end
  end

  def edit
    @championship_pilot = ChampionshipPilot.find(params[:id])
  end

  def update
    @championship_pilot = ChampionshipPilot.find(params[:id])
    if @championship_pilot.update_attributes(params[:championship_pilot])
      redirect_to @championship_pilot, :notice  => "Successfully updated championship pilot."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @championship_pilot = ChampionshipPilot.find(params[:id])
    @championship_pilot.destroy
    redirect_to championship_pilots_url, :notice => "Successfully destroyed championship pilot."
  end
end
