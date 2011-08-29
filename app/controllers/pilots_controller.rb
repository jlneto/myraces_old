class PilotsController < ApplicationController
  def index
    @pilots = Pilot.all
  end

  def show
    @pilot = Pilot.find(params[:id])
  end

  def new
    @pilot = Pilot.new
  end

  def create
    @pilot = Pilot.new(params[:pilot])
    if @pilot.save
      redirect_to @pilot, :notice => "Successfully created pilot."
    else
      render :action => 'new'
    end
  end

  def edit
    @pilot = Pilot.find(params[:id])
  end

  def update
    @pilot = Pilot.find(params[:id])
    if @pilot.update_attributes(params[:pilot])
      redirect_to @pilot, :notice  => "Successfully updated pilot."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @pilot = Pilot.find(params[:id])
    @pilot.destroy
    redirect_to pilots_url, :notice => "Successfully destroyed pilot."
  end
end
