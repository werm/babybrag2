Babybrag::Application.routes.draw do
  resources :baby_pics

  get "baby_pics/index"

  get "users/index"

  get "users/show"

  authenticated :user do
    root :to => 'home#index'
  end
  
  root :to => "landing#index"
  
  devise_for :users
  resources :users, :only => [:show, :index]
  
end
