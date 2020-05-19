class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.find(params[:id])
  end

  def create
    @school_class = SchoolClass.find(params[:id])
    SchoolClass.create(school_class_params)
    redirect_to school_class_path
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end

  def update
    @schoolclass = SchoolClass.find(params[:id]
    @schoolclass.update(school_class_params)
    redirect_to school_class_path
  end

  private

    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end

end
