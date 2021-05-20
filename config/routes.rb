Rails.application.routes.draw do
  devise_for :users
  root to: 'music_players#index'

  namespace :music do
    resources :all_shuffle_plays, only: [:index, :show]
  end
end
