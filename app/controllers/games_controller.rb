
class GamesController < ApplicationController

  def index
    @group = Group.first
    @users = @group.users.order(board_spots: :desc)
  end

  def update
    @user = User.first

  end

end

