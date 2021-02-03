class Api::CommentsController < ApplicationController
  def index; end

  def create
    comment = Comment.create(comment_params)
    if comment.persisted?
      binding.pry
      render json: { comment: 'Your comment where posted successfully!' }, status: 201
    else
      binding.pry
      render json: { message: comment.errors.full_message.to_sentence }, status: 422
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
