class Api::CommentsController < ApplicationController
  def index; end

  def create
    comment = Comment.create
    render json: { comment: comment }, status: 201
  end
end
