class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]

 def fetch_wines
    @wines = Wine.find_by_id(params[:title])
  end

  # GET /wines
  # GET /wines.json
  def index
    @wines = Wine.all
      respond_to do |format|
      format.json { render json: @wines }
      format.xml { render xml: @wines}
  end
end
  # GET /wines/1
  # GET /wines/1.json
  def show
    respond_to do |format|
      format.json { render json: @wines }
      format.xml { render xml: @wines }
  end
end
  # GET /wines/new
  def new
    @wine = Wine.new
  end

  # GET /wines/1/edit
  def edit
  end

  
end