class StudentsController < ApplicationController


  def new
  end

  def create
    Student.create(song_params(:first_name, :last_name))
    redirect_to student_path
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
  end

  def update
  end

end
