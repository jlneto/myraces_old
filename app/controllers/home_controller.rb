class HomeController < ApplicationController
  def index
    if current_user
      @pilot = Pilot.find_by_user_id(current_user.id)
    end
    @championships = Championship.all
  end

end
