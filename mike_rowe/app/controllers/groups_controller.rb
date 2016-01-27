require 'date'

class GroupsController < ApplicationController

  def index

  end

  def new

  end

  def create
    session[:teacher_id] = 1
    teacher = Teacher.find(session[:teacher_id])
    student = Student.find(params[:student_id])
    new_group = student.groups.build(date: Date.today)
    teacher.groups << new_group
  end

  def destroy

  end

private

  def group_params
    params.require(:group).permit(:date)
  end
end
