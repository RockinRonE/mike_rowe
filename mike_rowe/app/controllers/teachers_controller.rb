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
      redirect_to '/login'
    end

  def show
    if Teacher.all.length > 0
      @teacher = Teacher.find(params[:id])
    end
  end

private
  def teacher_params
    params.require(:teacher).permit(:name, :email, :password_digest, :admin)
  end

  def teacher_params
    params.require(:teacher).permit(:avatar)
  end

end