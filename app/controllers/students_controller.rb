class StudentsController < ApplicationController

  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
  end

  def create
    puts params
    student = Student.new(params[:student])
    if student.save
      redirect_to student_path(student.id)
    else
      puts params[:student]
    end
  end
end
