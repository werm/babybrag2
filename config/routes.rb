Babybrag::Application.routes.draw do
  resources :baby_pics

  get "users/index"

  get "users/show"

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users, :only => [:show, :index]
  
  mount ActsAsCaesar::Rails::Engine => "/acts_as_caesar"
end
