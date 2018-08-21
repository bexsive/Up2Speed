Rails.application.routes.draw do

  get 'lifts/new'

  get 'lifts/show'

  get 'lifts/index'

  root to: "static#Home"
  get 'static/Home'

  get 'static/Wellness'

  get 'static/Sports_Performance'

  devise_for :users

  resources :users do
    resources :workouts
  end
  resources :workouts do
    resources :lifts
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
