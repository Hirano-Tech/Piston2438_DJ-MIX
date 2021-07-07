class Music::PlaylistThemesController < ApplicationController
  before_action :authenticate_user!

  def index
    if session[:playlists].length == 0
      redirect_to root_path
    else
      if request.fullpath.include? 'mp3-next'
        redirect_to(action: 'show', id: session[:playlists].shift, category: 'MP3')
      elsif request.fullpath.include? 'flac-next'
        redirect_to(action: 'show', id: session[:playlists].shift, category: 'FLAC')
      end
    end
  end

  def show
    @music = Piston2438Mix.readonly.find(params[:id])

    if params[:category] == 'MP3'
      @category = 'MP3（320kbps）'
    elsif params[:category] == 'FLAC'
      @category = 'ロスレスオーディオ'
    end

    unless session[:playlists].blank?
      session[:playlists].shuffle!
      @next_music = Piston2438Mix.select(:id, :title, :release_date).readonly.find(session[:playlists][0])
    end
  end
end
