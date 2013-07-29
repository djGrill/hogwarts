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

    if students.length > 0
      house_ids = House.select(:id).map { |house| house.id }

      students.each do |student|
        random_index = Random.rand(house_ids.length)
        student.house = House.where(id: house_ids[random_index]).first
        student.save
      end
    end

    redirect_to action: :index
  end
end
