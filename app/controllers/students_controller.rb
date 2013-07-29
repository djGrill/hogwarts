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

  def hat
    students = Student.where(house_id: nil)
    students.each do |student|
      house_id = Random.rand(Constants::HOUSES_COUNT) + 1
      student.house = House.where(id: house_id).first
      student.save
    end

    redirect_to action: :index
  end
end
