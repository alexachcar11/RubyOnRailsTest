Rails.application.routes.draw do

	root "articles#index"
 
 # create comments as a nested resource within articles -> indicates hierarchical relationship between articles and comments
	resources :articles do 
		resources :comments
	end

	# get "/articles", to: "articles#index"
	# get "/articles/:id", to: "articles#show"

end
