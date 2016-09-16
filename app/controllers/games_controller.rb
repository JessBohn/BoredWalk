class GamesController < ApplicationController


  def index
    @group = Group.first
    @users = @group.users.order(board_spots: :desc)
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
    response = Yelp.client.search(@game.location, { term: 'bar'})
    @businesses = response.businesses
    response2 = Yelp.client.search(@game.location, { term: 'bar'})
    @businesses2 = response2.businesses[0..1]
    @businesses.each do |business|
      @new_bar = Bar.find_or_create_by(name: business.name,
      address: business.location.address,
      rating: business.rating,
      website: business.url,
      photo: business.image_url)
      @game.bars << @new_bar
    end
    @businesses2.each do |business|
      @new_bar = Bar.find_or_create_by(name: business.name,
      address: business.location.address,
      rating: business.rating,
      website: business.url,
      photo: business.image_url)
      @game.bars << @new_bar
    end
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


  

end

