class StudentsController < ApplicationController
  before_filter :authorize

  def index
    @students = Student.all
    @group = Group.new
  end

  def create
  	@student = Student.create(student_params)
  end

  def show
    if Student.all.length > 0
      @student = Student.find(params[:id])
    end
  end

  private

 def student_params
  params.require(:student).permit(:avatar)
end

end
