class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find(params[:id])
  end

  def create
    @board = Board.new(board_params)
    respond_to do |format|
      if @board.save
        format.json {render json: @board}
      else
        format.json {render json: @board.errors, status: :unprocessable_entity}
      end
    end
  end

  private

  def board_params
    params.require(:board).permit(:name)
  end
end
