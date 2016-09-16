class LocationsController < ActionController::Base
	
	def index
		render "Hello"
	end


	def search
		# parameters = { term: params[:term], limit: 16 }
    render json: Yelp.client.search('Austin', { term: 'bar' })
  end

end