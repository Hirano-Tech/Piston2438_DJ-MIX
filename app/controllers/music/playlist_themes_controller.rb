class Music::PlaylistThemesController < ApplicationController
  def index
    if session[:playlists].length == 0
      redirect_to root_path
    else
      if request.fullpath.include? 'mp3-shuffle'
        redirect_to(action: 'show', id: session[:playlists].shift, category: 'MP3', theme: 'アンパンマン')
      elsif request.fullpath.include? 'flac-shuffle'
        redirect_to(action: 'show', id: session[:playlists].shift, category: 'FLAC', theme: 'アンパンマン')
      end
    end
  end

  def show
    if params[:theme] == 'アンパンマン' || params[:theme] == 'お気に入り'
      @music = MixmachineDjmix.readonly.find(params[:id])
    end
  end
end
