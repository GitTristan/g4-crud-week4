class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def new
    @events = Event.new
  end

  def create
    event = Event.new(event_params)
    event.save

    redirect_to event_path[:id]
  end

  def show
    @event = Event.find(params[:id])
  end

  private

  def event_params
    params.require(:event).permit(:date, :location, :description,:capacity, :requires_id)
  end

end
