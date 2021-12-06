class FarmerUsers::JoinsController < ApplicationController
  before_action :authenticate_farmer_user!

  def new
    @event = Event.find(params[:event_id])
    @join = Join.new
  end
  # newアクションから入力内容を受け取り、
   # 送信ボタンを押されたらcreateアクションを実行します
  def confirm
    @event = Event.find(params[:event_id])
    @join = Join.new(join_params)
    @join.farmer_user_id = current_farmer_user.id
  end

  def create
    @event = Event.find(params[:event_id])
    @join = current_farmer_user.joins.new(join_params)
    @join.event_id = @event.id
    if @join.save
     redirect_to complete_farmer_users_event_joins_path
    else
     render :new
    end
  end

  def complete
  end

  def index
    @farmer_user = current_farmer_user
    @joins = @farmer_user.joins.all
  end

  # def show
  #   @join = Join.find(params[:id])
  #   if @event.join_id = current_farmer_user.id
  #   else
  #       @event.join_id = current_general_userd.id
  #   end
  # end

  def join_params
    params.require(:join).permit(:farmer_user_id, :email, :phone, :people, :name, :memo)
  end

end
