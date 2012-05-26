Babybrag::Application.routes.draw do
  resources :authentications

  resources :baby_pics

  match '/auth/:provider/callback' => 'authentications#create'
  devise_for :users
  resources :users, :only => [:show, :index]
  authenticated :user do
    root :to => 'home#index'
  end
  
  root :to => "landing#index"

  get "baby_pics/index"

  get "users/index"

  get "users/show"

end
