class TracksController < ApplicationController
  def index
    @tracks = Track.all
  end

  def show
    @track = Track.find(params[:id])
  end

  def new
    @track = Track.new
  end

  def create
    @track = Track.new(params[:track])
    if @track.save
      redirect_to @track, :notice => "Successfully created track."
    else
      render :action => 'new'
    end
  end

  def edit
    @track = Track.find(params[:id])
  end

  def update
    @track = Track.find(params[:id])
    if @track.update_attributes(params[:track])
      redirect_to @track, :notice  => "Successfully updated track."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @track.destroy
    redirect_to tracks_url, :notice => "Successfully destroyed track."
  end
end
