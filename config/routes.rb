Rails.application.routes.draw do
  devise_for :users
  resources :products, :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	root to: 'products#index'

	resources :products do
		member do 
			post 'upvote'
		end
	end
end
