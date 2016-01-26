require 'date'

class GroupsController < ApplicationController
  def create
    session[:teacher_id] = 1
    teacher = Teacher.find(session[:teacher_id])
    student = Student.find(params[:id])
    new_group = student.groups.build(date: Date.today)
    teacher.groups << new_group
    render :'/students/index'
  end
end
