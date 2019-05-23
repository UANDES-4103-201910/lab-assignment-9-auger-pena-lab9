class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def new
  end

  def create
    @event = Event.new(event_params)
    authorize! :create, @event
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def event_params
      params.require(:event).permit(:name, :description, :start_date, :place)
    end

end
