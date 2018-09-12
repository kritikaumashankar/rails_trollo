class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :edit, :destroy, :update]
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def show
  end

  def edit
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      redirect_to @board
    else
      render :new
    end
  end

  def update
    if @board.update(board_params)
      redirect_to @board
    else
      render :edit
    end
  end

  def destroy
    @board.destroy
    redirect_to boards_path
  end


private 
def board_params
  params.require(:board).permit(:name)
end

def set_board
  @board = Board.find(params[:id])
end
end