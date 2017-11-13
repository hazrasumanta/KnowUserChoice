Rails.application.routes.draw do
  get 'session/new'

  get 'session/create'

  get 'session/destroy'

  resources :users do
  	collection do
  		post :signup
  	end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
