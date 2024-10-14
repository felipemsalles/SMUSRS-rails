class AppointmentsController < DashboardController
  before_action :authenticate_user!
  before_action :set_user, only: [:new, :create, :next_appointment, :my_appointments]
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index; end

  def new
    @appointment = @user.appointments.new
  end

  def create
    @appointment = @user.appointments.new(appointment_params)

    if @appointment.save
      redirect_to(minhas_consultas_appointments_path)
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @appointment.update(appointment_params)
      redirect_to minhas_consultas_appointments_path
    else
      render :new
    end
  end

  def destroy
    @appointment.destroy
    redirect_to minhas_consultas_appointments_path
  rescue ActiveRecord::StatementInvalid
    redirect_to minhas_consultas_appointments_path
  end

  def my_appointments
    @appointments = @user.appointments
  end

  def next_appointment
    if @user.appointments.any?
      @appointment = @user.appointments.where("date > ?", Date.today).sort_by(&:date).first
    else
      redirect_to(appointments_path)
    end
  end

  private

  def set_user
    @user = current_user
  end

  def set_appointment
    @appointment = current_user.appointments.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:pacient, :title, :doctor, :prescription_url, :description, :address, :date)
  end
end
