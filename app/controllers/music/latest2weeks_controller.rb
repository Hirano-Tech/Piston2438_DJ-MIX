class Music::Latest2weeksController < ApplicationController
  before_action :authenticate_user!

  def index
    if session[:playlists].length == 0
      redirect_to root_path
    else
      if request.fullpath.include? '2weeks_mp3-shuffle'
        redirect_to(action: 'show', id: session[:playlists][0]['id'], category: 'MP3')
      elsif request.fullpath.include? '2weeks_flac-shuffle'
        redirect_to(action: 'show', id: session[:playlists][0]['id'], category: 'FLAC')
      end
    end
  end

  def show
    @music = MixmachineDjmix.readonly.find(params[:id])
    session[:playlists].shift
  end
end
