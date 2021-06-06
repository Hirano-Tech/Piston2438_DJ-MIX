Rails.application.routes.draw do
  devise_for :users
  root to: 'music_players#index'

  resources :music_players, only: [:index, :create]
  namespace :music do
    resources :all_shuffle_plays, only: [:index, :show]
      get('all_mp3-shuffle', to: 'all_shuffle_plays#index')
      get('all_flac-shuffle', to: 'all_shuffle_plays#index')
    resources :latest2weeks, only: [:index, :show]
      get('2weeks_mp3-shuffle', to: 'latest2weeks#index')
      get('2weeks_flac-shuffle', to: 'latest2weeks#index')
    resources :playlist_themes, only: [:index, :show]
      get('mp3-shuffle', to: 'playlist_themes#index')
      get('flac-shuffle', to: 'playlist_themes#index')
  end
end
