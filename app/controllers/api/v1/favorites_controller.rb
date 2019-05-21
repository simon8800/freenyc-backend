class Api::V1::FavoritesController < ApplicationController
  def create
    @favorite = Favorite.create(favorite_params)
  end

  def destroy
    byebug
  end

  private
  def favorite_params
    params.permit(:user_id, :course_id)
  end
end