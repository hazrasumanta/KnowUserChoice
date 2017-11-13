Rails.application.routes.draw do
  get 'session/new'

  get 'session/destroy'

  #session for login logout
  resources :session do
  	collection do
  		post :login
  		post :logout
  	end
  end
  #users for signup topics
  resources :users do
  	collection do
  		post :signup
  		post :topics
  	end
  end
  #users for signup topics
  resources :topic do
  	collection do
  		get :users
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
