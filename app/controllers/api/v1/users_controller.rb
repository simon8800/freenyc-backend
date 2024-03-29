# frozen_string_literal: true

class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create, :index, :show]

  def profile
    render json: { user: UserSerializer.new(current_user) }, status: :accepted
  end

  def index
    @users = User.all
    render json: @users
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @token = encode_token(user_id: @user.id)
      render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else
      render json: { error: "That email is already in use." }, status: :not_acceptable
    end
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  private

  def user_params
    params.permit(:email, :password, :f_name, :l_name)
  end
end
