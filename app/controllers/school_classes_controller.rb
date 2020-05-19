class SchoolClassesController < ApplicationController
  def new
  end

  def create
    SchoolClass.create(school_class_params)
    redirect_to school_class_path
  end

  def show
    @schoolclass = SchoolClass.find(params[:id])
  end

  def edit
  end

  def update
    @schoolclass = SchoolClass.find(params[:id]
    @school_class.update(school_class_params)
    redirect_to school_class_path
  end

  private

    def school_class_params
      params.require(:school_class).permit(:title, :room_number)
    end
  end
end
