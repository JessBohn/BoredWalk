Rails.application.routes.draw do
	root 'locations#index'
	post '/search' => 'locations#search'
end
