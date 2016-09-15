class LocationsController < ActionController::Base
	
	def index
    # parameters = { term: params[:term], limit: 16 }
    render json: Yelp.client.search('Austin', { term: 'bar' })
  end

end