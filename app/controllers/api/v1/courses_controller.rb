class Api::V1::CoursesController < ApplicationController
  skip_before_action :authorized
  
  # api/v1/courses
  def index
    @courses = Course.all
    render json: @courses
  end

  # api/v1/courses/:id
  def show
    @course = Course.find(params[:id])
    render json: @course
  end
  
end
