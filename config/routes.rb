Rails.application.routes.draw do
  devise_for :users

  root :to => 'posts#index'

  resources :posts do
    resources :tags, except: [:index]
  end

  resources :tags, except: [:index] do 
    resources :posts
  end
end
