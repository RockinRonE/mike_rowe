class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def create
  	@student = Student.create(student_params)
  end 

  def show
    @student = Student.find(params[:id])
  end

  private

 def student_params
  params.require(:student).permit(:avatar)
end

end
