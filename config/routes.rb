Rails.application.routes.draw do
  devise_for :users
  resources :exercise_sessions, only: [:index, :show]
  resources :general_stats, only: [:index, :show]
  resources :weight_sets, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
