class GamesController < ApplicationController


  def index
    @games = Game.all
  
  end

  def new
    @game = Game.new
  end

  def create
    user = User.find(current_user)
    @game = user.games.new(game_params)
    if @game.save
      redirect_to @game
    else
      render "new"
    end
  end

  def show
    @game = Game.find(params[:id])
    response = Yelp.client.search(@game.location, { term: 'bar' })
    @businesses = response.businesses
    render :index
  end

  def edit
    @game = Game.find(params[:id])
  end

  def update
    @game = Game.find(params[:id])
    if @game.update(game_params)
      redirect_to @game
    else
      render "edit"
    end
  end

  def destroy
    @game = Game.find(params[:id])
    @game.comments.destroy
    @game.destroy
    redirect_to games_path
  end

  private
  def game_params
    params.require(:game).permit(:name, :location)
  end

end