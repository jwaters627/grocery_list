Rails.application.routes.draw do
  

  get 'demo/index'

  resources :lists do
  	member do
  		get :delete
  	end
  end

  resources :users do
  	member do
  		get :delete
  	end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
