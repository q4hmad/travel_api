Rails.application.routes.draw do
  root :to => 'desinations#index'
  resources :destinations do
    resources :reviews, :except => [:show, :index]
  end
end
