class PresentsController < ApplicationController
  def index
    @presents = Present.all
  end

  def create
    Present.create(present_params)
    redirect_to presents_path
  end

  def new
    @present = Present.new
  end

  def edit
    @present = Present.find(params[:id])
  end

  def show
    @present = Present.find(params[:id])
  end

  def update
    Present.find(params[:id]).update(present_params)
    redirect_to presents_path
  end

  def destroy
    Present.find(params[:id]).destroy
    redirect_to presents_path
  end

  private
  def present_params
    params.require(:present).permit(:recipient, :contents, :image)
  end
end