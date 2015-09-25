class FestivalsController < ApplicationController
  before_action :set_festival, only: [:show]
  def index
    @festivals = Festival.all
  end
  def show

  end
  def new
    @festival = Festival.new
  end
  def create
    @festival = Festival.create(festival_params)
  end
  private
  def set_festival
    @festival = Festival.find(params[:id])
  end
  def festival_params
    params.require(:festival).permit(:name, :address, :start_date, :end_date)
  end
end
