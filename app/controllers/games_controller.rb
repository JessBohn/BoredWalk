
class GamesController < ApplicationController

  def index
    @group = Group.first
    @users = @group.users.order(board_spots: :desc)
  end

  def update
    @user = User.first
    @user.board_spots += 1
    @user.save
    redirect_to :index
  end

end

