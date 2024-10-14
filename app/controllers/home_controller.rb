class HomeController < ApplicationController
  def index
    @doubt = Doubt.new
  end

  def create_doubt
    @doubt = Doubt.new(doubt_params)
    @doubt.save
  end

  private

  def doubt_params
    params.require(:doubt).permit(:name, :email, :subject, :message)
  end
end
