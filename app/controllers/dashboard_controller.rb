class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :perfil, :edit_perfil, :update_perfil, :history]

  layout 'dashboard'

  def show; end

  def perfil; end

  def edit_perfil; end

  def update_perfil
    if @user.update!(user_params)
      redirect_to dashboard_perfil_path
    else
      render :edit_perfil
    end
  end

  def history
    @appointments = @user.appointments.sort_by(&:date)
    @exams = @user.exams.sort_by(&:date)
  end

  private

  def set_user
    @user = current_user
  end

  def user_params
    params.require(:user).permit(:name, :email, :age, :gender)
  end
end
