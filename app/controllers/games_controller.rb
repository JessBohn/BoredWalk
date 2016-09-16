
class GamesController < ApplicationController

  def index
    @group = Group.first
    @users = @group.users.order(board_spots: :desc)
  end

end

