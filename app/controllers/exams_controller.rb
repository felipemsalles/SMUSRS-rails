class ExamsController < DashboardController
  before_action :authenticate_user!
  before_action :set_user, only: [:new, :create, :next_exam, :my_exams]
  before_action :set_exam, only: [:show, :edit, :update, :destroy]

  def index; end

  def new
    @exam = @user.exams.new
  end

  def create
    @exam = @user.exams.new(exam_params)

    if @exam.save
      redirect_to(meus_exames_exams_path)
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @exam.update(exam_params)
      redirect_to meus_exames_exams_path
    else
      render :new
    end
  end

  def destroy
    @exam.destroy
    redirect_to meus_exames_exams_path
  rescue ActiveRecord::StatementInvalid
    redirect_to meus_exames_exams_path
  end

  def next_exam
    if @user.exams.any?
      @exam = @user.exams.where("date > ?", Date.today).sort_by(&:date).first
    else
      redirect_to(exams_path)
    end
  end

  def my_exams
    @exams = @user.exams
  end

  private

  def set_user
    @user = current_user
  end

  def set_exam
    @exam = current_user.exams.find(params[:id])
  end

  def exam_params
    params.require(:exam).permit(:pacient, :title, :doctor, :prescription_url, :description, :address, :date)
  end
end
