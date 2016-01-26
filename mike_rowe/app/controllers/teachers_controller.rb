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
    require 'date'
    if Teacher.all.length > 0
      @teacher = Teacher.find(params[:id])
      @date = Date.today
    end
  end

private
  def teacher_params
    params.require(:teacher).permit(:name, :email, :password, :admin)
  end

  def teacher_params
    params.require(:teacher).permit(:avatar)
  end

end