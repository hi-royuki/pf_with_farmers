class GeneralUsers::JoinsController < ApplicationController

  def new
    @event = Event.find(params[:event_id])
    @join = Join.new
  end

   # newアクションから入力内容を受け取り、
   # 送信ボタンを押されたらcreateアクションを実行します
  def confirm
    @event = Event.find(params[:event_id])
    @join = Join.new(join_params)
    @join.general_user_id = current_general_user.id
  end

  # 入力内容に誤りがあった場合
  def back
    @event = Event.find(params[:event_id])
    @join = Join.new(join_params)
    render :new
  end

  def create
     @event = Event.find(params[:event_id])
     @join = current_general_user.joins.new(join_params)
    if @join.save
     redirect_to complete_general_users_event_joins_path
    else
     render :new
    end
  end

  def complete
  end

  def index
    @general_user = current_general_user
    @event = Event.find(params[:event_id])
    @joins = @general_user.joins.all
  end

  def show
   @join = Join.find(params[:join_id])
  end

  private

  def join_params
    params.require(:join).permit(:general_user_id, :email, :phone, :people, :name, :memo)
  end

end
