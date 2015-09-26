class FestivalsController < ApplicationController
  before_action :set_festival, only: [:show, :edit, :update]
  def index
    @festivals = Festival.all
  end
  def show
  end
  def new
    @festival = Festival.new
  end
  def create
    @festival = Festival.new(festival_params)
    @festival.save
  end
  def edit
  end
  def update
    @festival.update(festival_params)
    redirect_to festival_path(@festival)
  end
  private
  def set_festival
    @festival = Festival.find(params[:id])
  end
  def festival_params
    params.require(:festival).permit(:name, :address, :start_date, :end_date)
  end
end
