class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def new

  end

  def create
    teacher = Teacher.new(teacher_params)
    if teacher.save
      session[:teacher_id] = teacher.id
      redirect_to '/'
    else
      flash[:error] = 'An error occured!'
      redirect_to '/login'
    end

  def show
    if Teacher.all.length > 0
      @teacher = Teacher.find(params[:teacher_id])
    end
  end

private
  def teacher_params
    params.require(:teacher).permit(:name, :email, :avatar, :password, :admin)
  end

end