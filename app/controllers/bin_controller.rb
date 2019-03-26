class BinController < ApplicationController

  def index
    @bins = bin.all
  end

  def show
    @bin = Bin.find(params[:id])
  end

  private
  def bin_params
    params.require(:bin).permit(:name)
  end
end
