Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:show, :create] #to add update and destroy later on -- for now, lets just focus on getting the basics functional
    resources :books, only: [:index, :show]
    resources :reviews, only: [:create]
    resource :session, only: [:new, :create, :destroy]
  end

  root to: "static_pages#root"
end
