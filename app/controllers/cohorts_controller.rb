class CohortsController < ApplicationController
  def new
    @cohort = Cohort.new

  end

  def index
    @cohorts = Cohort.all
  end



  def create
    @cohort = Cohort.new(cohort_params)
    if @cohort.save
      redirect_to @cohort
    else
      render 'new'
    end
  end

  def show
    @cohort = Cohort.find(params[:id])
    @cohort.students << Student.find(params[:q][:student_ids]) if params[:q]
  end

  def destroy
    @cohort = Cohort.find(params[:id])
    @cohort.destroy
    respond_to do |format|
    format.js {render :layout => false}
    format.html {p 'html response';
    redirect_to root_path }
    end
  end


def update
  @cohort = Cohort.find(params[:id])
  @cohort.update(cohort_params)
  render 'show'
end

def edit
  @cohort = Cohort.find(params[:id])
  @cohort.students << Student.find(params[:q][:student_ids]) if params[:q]
end

private
def cohort_params
  params.require(:cohort) .permit(:cohort_name, :start_date, :end_date, :course_id, :student_id, :instructor_id)
end
end
