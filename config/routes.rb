Rails.application.routes.draw do
  


  root 'welcome#index'

  get 'admin', :to => 'access#menu'
  get 'access/menu'
  get 'access/login'
  post 'access/attempt_login'
  get 'access/logout'

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
