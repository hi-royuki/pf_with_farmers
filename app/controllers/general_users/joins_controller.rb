class GeneralUsers::JoinsController < ApplicationController

  def new
    @join = Join.new
  end

  def index
  end

  def show
  end

  def create
  end

  def confirm
    @join = Join.new(join_params)
    
    
    
  end

  def complete
  end

end
