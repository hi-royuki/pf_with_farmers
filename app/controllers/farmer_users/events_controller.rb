class FarmerUsers::EventsController < ApplicationController

before_action :authenticate_farmer_user!
  # def new
  # end

  def index
    @event = Event.new
    @events = Event.all.order(created_at: :desc)
  end

  def search
    @event = Event.new
    @events = Event.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
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
      @events = Event.all.order(created_at: :desc)
      render action: :index
    end

  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to farmer_users_events_path
  end

  def confirm
    @farmer_user = current_farmer_user
    @general_user = current_general_user
    @events = @farmer_user.events.all
    # @joins = Join.where(event_id: )
    @joins = Join.all

  end




  # def updated
  # if @event.update(event_params)
  #     redirect_to confirm_farmer_users_events, notice: "対応ステータスを更新しました"
  # else
  #     render :confirm, alert: "対応ステータスを更新できませんでした"
  # end
  # end

  private
  def event_params
    params.require(:event).permit(:title, :event_image, :introduction, :event_date, :price, :response_status)
  end

end
