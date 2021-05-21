Rails.application.routes.draw do
  devise_for :users
  root to: 'music_players#index'

  namespace :music do
    resources :all_shuffle_plays, only: [:show]

    get('all_mp3-shuffle', to: 'all_shuffle_plays#index')
    get('all_flac-shuffle', to: 'all_shuffle_plays#index')
  end
end
