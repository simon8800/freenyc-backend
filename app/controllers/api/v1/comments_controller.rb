class Api::V1::CommentsController < ApplicationController
  skip_before_action :authorized
  before_action :set_comment, only: [:show, :update, :destroy]

  # GET api/v1/comments
  def index
    @comments = Comment.all

    render json: @comments
  end

  # GET api/v1/comments/1
  def show
    render json: @comment
  end

  # POST api/v1/comments
  def create
    @user = User.find_by(email: params[:user_email])
    @comment = Comment.new(message: params[:message], user_id: @user.id, course_id: params[:course_id])

    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT api/v1/comments/1
  def update
    if @comment.update(comment_params)
      render json: @comment
    else
      render json: @comment.errors, status: :unprocessable_entity
    end
  end

  # DELETE api/v1/comments/1
  def destroy
    @comment.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.permit(:message, :user_id, :course_id)
    end
end
