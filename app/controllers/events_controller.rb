class EventsController < ApplicationController
  before_action :set_group
  
  def index
    @events = Event.all
    @group_events = @group.calendar_groups
    @event = Event.new
  end
  
  def new
    @event = Event.new
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.create(event_parameter)
    if @event.save
      @calendar = Calendar.new(group_id: @group.id, event_id: @event.id)
      @calendar.save
      redirect_to event_path(@event)
    end
  end
  
  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update(event_parameter)
      redirect_to event_path(@event), notice: 'イベントが更新されました。'
    else
      render :edit
    end
  end
  
  private

  def event_parameter
    params.require(:event).permit(:content, :comment, :start_time)
  end
  
  def set_group
    @group = Group.find_by(id: params[:group_id] || session[:group_id])
  end
  
end
