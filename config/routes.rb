Rails.application.routes.draw do

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

  resources :users do
    resources :meals
  end

#  resources :meals do
#    resources :foods
#  end

namespace 'api' do
  namespace 'v1' do
    resources :users
    resources :workouts
    resources :lifts
    resources :meals

  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
