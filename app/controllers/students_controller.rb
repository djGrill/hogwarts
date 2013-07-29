class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.where(id: params[:id]).first
  end

  def new
    @houses = House.all
  end

  def create
    new_student = Student.new()
    new_student.name = params[:name]
    new_student.save

    redirect_to new_student
  end
end
