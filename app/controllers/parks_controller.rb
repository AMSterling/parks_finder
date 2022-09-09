class ParksController < ApplicationController
  def index
    @total_by_state = ParkFacade.search(params[:state])
  end
end
