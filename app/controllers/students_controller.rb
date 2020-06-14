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
    # raise params
    Student.create(params[:student])
    redirect_to student_path
  end
end
