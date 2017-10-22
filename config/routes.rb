Rails.application.routes.draw do
  resources :general_stats
  resources :weight_sets
  resources :exercise_sessions
  devise_for :users
  root 'exercise_sessions#index'#we'll make this a landing page later
  resources :exercise_sessions, only: [:index, :show]
  resources :general_stats, only: [:index, :show]
  resources :weight_sets, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
