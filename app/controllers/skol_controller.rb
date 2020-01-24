class SkolController < ApplicationController

  def index
    @skol = Skol.order("RANDOM()").first
  end

  def create
    @skol = Skol.create(skol_params)
  if @skol.invalid?
    flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
  end
    redirect_to root_path
  end

  def update
  end

  def about
  end

  private

  def skol_params
    params.require(:skol).permit(:player, :position)
  end
end