class CommunitiesController < ApplicationController
  before_authentification :authenticate_user!, except: [:index, :show]

  def index
    
  end

  def show
  end

  def new
  end

  def create
  end
end
