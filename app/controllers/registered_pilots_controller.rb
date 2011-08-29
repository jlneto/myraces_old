class RegisteredPilotsController < ApplicationController
  def index
    @registered_pilots = RegisteredPilot.all
  end

  def show
    @registered_pilot = RegisteredPilot.find(params[:id])
  end

  def new
    @registered_pilot = RegisteredPilot.new
  end

  def create
    @registered_pilot = RegisteredPilot.new(params[:registered_pilot])
    if @registered_pilot.save
      redirect_to @registered_pilot, :notice => "Successfully created registered pilot."
    else
      render :action => 'new'
    end
  end

  def edit
    @registered_pilot = RegisteredPilot.find(params[:id])
  end

  def update
    @registered_pilot = RegisteredPilot.find(params[:id])
    if @registered_pilot.update_attributes(params[:registered_pilot])
      redirect_to @registered_pilot, :notice  => "Successfully updated registered pilot."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @registered_pilot = RegisteredPilot.find(params[:id])
    @registered_pilot.destroy
    redirect_to registered_pilots_url, :notice => "Successfully destroyed registered pilot."
  end
end
