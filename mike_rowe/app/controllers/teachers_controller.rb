class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def create

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
  params.require(:teacher).permit(:avatar)
end

end