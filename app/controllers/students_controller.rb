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
    @student = Student.new(params)
    @student.name = students[:name]
    @student.save
    redirect_to students_path
  end

end
