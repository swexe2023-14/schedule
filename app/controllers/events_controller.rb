class EventsController < ApplicationController
  def index
    @events = Event.all
    @event = Event.new
  end
  
  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    Event.create(event_parameter)
    redirect_to events_path
  end
  
  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path, notice:"削除しました"
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  private

  def event_parameter
    params.require(:event).permit(:content, :start_time)
  end
  
end
