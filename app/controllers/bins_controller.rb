class BinsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @bins = Bin.all
  end

  def show
    @bin = Bin.find(params[:id])
  end

  private
  def bin_params
    params.require(:bin).permit(:name, :id)
  end
end
