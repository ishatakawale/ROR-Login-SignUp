Rails.application.routes.draw do
  get 'phoenix/index' #Home page 

  root 'sessions#new' #Login page
  
  resources :users #Common routes for all
	resources :sessions, only: [:new, :create, :destroy] 
	get 'signup', to: 'users#new', as: 'signup'
	get 'login', to: 'phoenix#index', as: 'login'
	get 'logout', to: 'sessions#destroy', as: 'logout'

end
