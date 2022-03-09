class FlightsController < ApplicationController
  
 
  def index
    @flights = Flight.search(params)
  end

  private

  def flight_params
    params.require(:flight).permit(:departure_airport_id,:arrival_airport_id)
  end
end
