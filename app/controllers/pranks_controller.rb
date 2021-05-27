class PranksController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @pranks =
    if params[:query]
      policy_scope(Prank).search_by_name_content_city(params[:query])
    else
      policy_scope(Prank)
    end
  end

  def show
    @booking = Booking.new
    @prank = Prank.find(params[:id])
    authorize @prank
  end

  def new
    @prank = Prank.new
    @prank.user = current_user
    authorize @prank
  end

  def create
    @prank = Prank.create(prank_params)
    @prank.user = current_user
    authorize @prank
    if @prank.save
      redirect_to prank_path(@prank)
    else
      render :new
    end
  end

  def prank_params
    params.require(:prank).permit(:name, :content, :price)
  end
end
