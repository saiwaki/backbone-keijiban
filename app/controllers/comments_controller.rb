class CommentsController < ApplicationController
  def show
    @board = Board.find(params[:board_id])
    @comments = @board.comments
  end

  def create
    @board = Board.find(params[:board_id])
    @comment = @board.comments.new(comment_params)
    respond_to do |format|
      if @comment.save
        format.json {render json: @comment}
      else
        format.json {render json: @comment.errors, status: :unprocessable_entity}
      end
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :content)
  end

end
