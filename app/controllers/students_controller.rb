class StudentsController < ApplicationController


  def new
  end

  def create
    Student.create(song_params(:first_name, :last_name))
  end

  def show
  end

  def edit
  end

  def update
  end

end
