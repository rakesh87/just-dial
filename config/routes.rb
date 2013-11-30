JustDial::Application.routes.draw do
  resources :items


  resources :review_ratings, only: [:new, :create] do
    get 'review_rating'
  end

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)


  root :to => 'items#index'
end
