class FestivalsController < ApplicationController
  def index
    @festivals = Festival.all
  end
  def show
    @festival = Festival.find(params[:id])
  end
end
