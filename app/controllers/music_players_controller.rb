class MusicPlayersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    if params.permit(:play_method)[:play_method].blank?
      render action: :index
    elsif params.permit(:play_method)[:play_method] == '01'
      @music = MixmachineDjmix.readonly.sample
        session[:already_play] = Array.new(20)
        session[:already_play].unshift @music.id
        session[:already_play].delete_at(20)
      redirect_to music_all_shuffle_play_path(id: @music.id, category: params.permit(:category)[:category])
    elsif params.permit(:play_method)[:play_method] == '02'
      @musics = MixmachineDjmix.readonly.select(:id).order(release_date: :DESC).limit(8).shuffle
      session[:playlists] = Array.new
      session[:playlists] = @musics
      redirect_to music_latest2week_path(id: @musics[0][:id], category: params.permit(:category)[:category])
    end
  end
end
