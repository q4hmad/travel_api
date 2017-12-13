Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root :to => 'destinations#index'
  resources :destinations do
    resources :reviews, :except => [:show, :index]
  end
end
