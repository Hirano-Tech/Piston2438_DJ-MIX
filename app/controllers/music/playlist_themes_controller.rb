class Music::PlaylistThemesController < ApplicationController
  def index
    if session[:playlists].length == 0
      redirect_to root_path
    else
      if request.fullpath.include? 'mp3-next'
        redirect_to(action: 'show', id: session[:playlists].shift, category: 'MP3', theme: session[:theme])
      elsif request.fullpath.include? 'flac-next'
        redirect_to(action: 'show', id: session[:playlists].shift, category: 'FLAC', theme: session[:theme])
      end
    end
  end

  def show
    @music = MixmachineDjmix.select(:id, :name, :title, :release_date).readonly.find(params[:id])

    unless session[:playlists].blank?
      session[:playlists].shuffle
      @next_music = MixmachineDjmix.select(:id, :title, :release_date).readonly.find(session[:playlists][0])
    end
  end
end
