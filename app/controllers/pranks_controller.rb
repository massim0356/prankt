class PranksController < ApplicationController
  def index
    @pranks = policy_scope(Prank)
  end

  def show
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
      render :new #show them the create prank view
    end
  end

  def prank_params
    params.require(:pranks).permit(:name, :content, :price)
  end
end
