class Api::V1::CoursesController < ApplicationController
  skip_before_action :authorized
  
  def index
    @courses = Course.all
    render json: @courses
  end

  def show
    @course = Course.find(params[:id])
    render json: @course
  end
  
end
