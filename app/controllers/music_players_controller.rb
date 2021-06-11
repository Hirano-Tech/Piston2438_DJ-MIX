class MusicPlayersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    session[:playlists] = Array.new

    if music_params[:play_method].blank?
      render action: :index
    elsif music_params[:play_method] == '01'
      session[:theme] = '全曲シャッフル'

      MixmachineDjmix.select(:id).readonly.each do |djmix|
        session[:playlists] << djmix[:id]
      end
    elsif music_params[:play_method] == '02'
      session[:theme] = '最新版'

      MixmachineDjmix.order(release_date: :DESC).limit(8).select(:id).readonly.each do |djmix|
        session[:playlists] << djmix[:id]
      end
    elsif music_params[:play_method] == '03'
      session[:theme] = 'お気に入り'

      favorite = ['ドリーミング', '松本梨香', '呼び込み君', '打首獄門同好会', 'さりけい', 'BLACK BISCUITS', '北島三郎', '氷川きよし', 'NIZIU', 'TWICE', 'SMAP','嵐']
      SongList.where(artist: favorite).select(:id, :mixmachine_djmix_id).readonly.each do |djmix|
        session[:playlists] << djmix[:mixmachine_djmix_id]
      end
    elsif music_params[:play_method] == '04'
      session[:theme] = 'アンパンマン'

      SongList.where(artist: 'ドリーミング').select(:id, :mixmachine_djmix_id).readonly.each do |djmix|
        session[:playlists] << djmix[:mixmachine_djmix_id]
      end
    end

    session[:playlists].uniq!
    session[:playlists].shuffle
    redirect_to music_playlist_theme_path(id: session[:playlists].shift, category: music_params[:category], theme: session[:theme])
  end

  private
  def music_params
    params.permit(:play_method, :category)
  end
end
