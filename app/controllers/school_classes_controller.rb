class SchoolClassesController < ApplicationController
  def new
  end

  def create
    Student.create(student_params)
    redirect_to student_path
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path
  end

  private

    def student_params
      params.require(:school_class).permit(:title, :room_number)
    end
end
