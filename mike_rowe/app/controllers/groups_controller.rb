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
    new_group = student.groups.create(date: params[:date], teacher: teacher)
  end

  def destroy

  end
end
