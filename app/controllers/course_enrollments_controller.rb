class CourseEnrollmentsController < ApplicationController
  before_action :set_course_enrollment, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @course_enrollments = CourseEnrollment.all
    respond_with(@course_enrollments)
  end

  def show
    respond_with(@course_enrollment)
  end

  def new
    @course_enrollment = CourseEnrollment.new
    respond_with(@course_enrollment)
  end

  def edit
  end

  def create
    @course_enrollment = CourseEnrollment.new(course_enrollment_params)
    @course_enrollment.save
    respond_with(@course_enrollment)
  end

  def update
    @course_enrollment.update(course_enrollment_params)
    respond_with(@course_enrollment)
  end

  def destroy
    @course_enrollment.destroy
    respond_with(@course_enrollment)
  end

  private
  def set_course_enrollment
    @course_enrollment = CourseEnrollment.find(params[:id])
  end

  def course_enrollment_params
    params.require(:course_enrollment).permit(:course_id, :participant_id)
  end
end
