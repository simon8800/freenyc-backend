class Api::V1::FavoritesController < ApplicationController
  def create
    @user = User.find_by(email: params[:email])
    @favorite = Favorite.create(user_id: @user.id, course_id: params[:course_id])
    if @favorite.valid?
      render json: {user: UserSerializer.new(@user)}, status: :created
    else
      render json: { error: "May be a duplicate"}, status: :not_acceptable
    end 
  end

  def destroy
    @user = User.find_by(email: params[:email])
    @favorite = Favorite.find_by(user_id: @user.id, course_id: params[:course_id])
    @favorite.destroy
    render json: {user: UserSerializer.new(@user)}, status: :accepted
  end

  private
  def favorite_params
    params.permit(:email, :course_id)
  end
end