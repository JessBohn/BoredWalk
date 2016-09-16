class LocationsController < ActionController::Base

	def index
		@game = Game.new(params[:game])

		response = Yelp.client.search(@game.location, { term: 'bar' })
		@businesses = response.businesses
		render :index
	end


end