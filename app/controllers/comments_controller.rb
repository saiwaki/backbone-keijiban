class CommentsController < ApplicationController
  def show
    @board = Board.find(params[:board_id])
    @comments = @board.comments
  end
end
