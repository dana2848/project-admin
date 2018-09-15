class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.all
  end

  def create
    @instructor = Instructor.new(instructor_params)
    if @instructor.save
      redirect_to @instructor
    else
      render 'new'
    end
  end

  def edit
    @instructor = Instructor.find(params[:id])
  end

  def new
    @instructor = Instructor.new
  end

  def show
    @instructor = Instructor.find(params[:id])
  end

  def update
    @instructor = Instructor.find(param[:id])
    if @instructor.update(student_params)
      redirect_to @instructor
    else
    render 'edit'
    end
  end

  def destroy
    @instructor = Instructor.find(params[:id])
    @instructor.destroy
    redirect_to instructors_path
  end

  private
  def instructor_params
    params.require(:instructor) .permit(:first_name, :last_name, :age, :salary, :education)
  end
end
