Rails.application.routes.draw do

	root 'static_pages#home'

	get '/shelf', to: 'static_pages#shelf'
	get '/house', to: 'static_pages#house'
	get '/shed', to: 'static_pages#shed'
	get '/topo_map', to: 'static_pages#topo_map'
	get '/about', to: 'static_pages#about'
	get '/contact', to: 'static_pages#contact'
	get '/signup',	to: 'users#new'
	# post '/signup', to: 'users#create'
	get '/login', to: 'sessions#new'
	post '/login', to: 'sessions#create'
	delete '/logout', to: 'sessions#destroy'

	resources :users do
		member do
			get :following, :followers
		end
	end

	resources :microposts, only: [:create, :destroy]
	resources :relationships, only: [:create, :destroy]

	resources :houses do
		member do
			get :change_pic
		end
	end

end
