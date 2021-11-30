class FarmerUsers::EventsController < ApplicationController

  def new
    @event = Event.new
  end

  def index
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def create
    @event = Event.new(event_params)
    @event.farmer_user_id = current_farmer_user.id
    if @event.save
      redirect_to farmer_users_events_path
    else
      render :new
    end

  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to farmer_users_events_path
  end

  private
  def event_params
    params.require(:event).permit(:title, :event_image, :introduction, :event_date, :price)
  end

end
