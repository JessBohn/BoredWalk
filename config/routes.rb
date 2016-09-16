Rails.application.routes.draw do
	resources :locations
	post '/search' => 'locations#search'
  resources :games
end
