class GeneralUsers::EventsController < ApplicationController
  before_action :authenticate_general_user!
  def index
    @events = Event.all.order(created_at: :desc)
  end

  def show
    @event = Event.find(params[:id])
  end

  def search
    @events = Event.search(params[:keyword])
    @keyword = params[:keyword]
    render "index"
  end

end
