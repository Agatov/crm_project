class CommentsController < ApplicationController

  before_filter :find_lead, only: :create
  before_filter :find_comment, only: [:update, :destroy]

  def create
    @comment = current_user.comments.build comment_params

    if @comment.save
      @client.add_comment @comment
    end

    redirect_to :back
  end

  def update
    @comment.update_attributes comment_params
    redirect_to :back
  end

  def destroy
    @comment.destroy
    redirect_to :back
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def find_lead
    @client = Client.find params[:lead_id]
  end

  def find_comment
    @comment = Comment.find params[:id]
  end
end
