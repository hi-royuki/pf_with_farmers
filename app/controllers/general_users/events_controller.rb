class GeneralUsers::EventsController < ApplicationController
  before_action :authenticate_general_user!
  def index
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

end
