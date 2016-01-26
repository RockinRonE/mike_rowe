class TeachersController < ApplicationController
  def index
    @teachers = Teacher.all
  end

  def create
    @teacher = Teacher.create(student_params)
  end

  def show
    if Teacher.all.length > 0
      @teacher = Teacher.find(params[:id])
    end
  end

  private

 def student_params
  params.require(:teacher).permit(:avatar)
end

end