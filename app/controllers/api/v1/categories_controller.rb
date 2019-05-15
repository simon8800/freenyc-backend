# frozen_string_literal: true

class Api::V1::CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render json: @categories
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.permit(:name)
  end
end
