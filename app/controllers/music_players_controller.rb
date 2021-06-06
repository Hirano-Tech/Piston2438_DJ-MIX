class MusicPlayersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    if music_params[:play_method].blank?
      render action: :index
    elsif music_params[:play_method] == '01'
      @music = MixmachineDjmix.readonly.sample
        session[:already_play] = Array.new(25)
        session[:already_play].unshift @music.id
        session[:already_play].delete_at(25)
      redirect_to music_all_shuffle_play_path(id: @music.id, category: music_params[:category])
    elsif music_params[:play_method] == '02'
      @musics = MixmachineDjmix.readonly.select(:id).order(release_date: :DESC).limit(8).shuffle
        session[:playlists] = Array.new
        session[:playlists] = @musics
      redirect_to music_latest2week_path(id: @musics[0][:id], category: music_params[:category])
    elsif music_params[:play_method] == '03'
      bookmark = SongList.where(artist: ['ドリーミング', '松本梨香', '呼び込み君', '打首獄門同好会', 'さりけい', 'BLACK BISCUITS', '北島三郎', '氷川きよし', 'NIZIU', 'TWICE', 'SMAP','嵐'])

      session[:playlists] = Array.new
        bookmark.each do | bookmark |
          session[:playlists] << bookmark.mixmachine_djmix.id
        end
      session[:playlists].uniq!
      session[:playlists].shuffle

      redirect_to music_playlist_theme_path(id: session[:playlists].shift, category: music_params[:category], theme: 'お気に入り')
    elsif music_params[:play_method] == '04'
      anpanman = SongList.where(artist: 'ドリーミング').readonly

      session[:playlists] = Array.new
        anpanman.each do | anpanman |
          session[:playlists] << anpanman.mixmachine_djmix.id
        end
      session[:playlists].uniq!
      session[:playlists].shuffle

      redirect_to music_playlist_theme_path(id: session[:playlists].shift, category: music_params[:category], theme: 'アンパンマン')
    end
  end

  private
  def music_params
    params.permit(:play_method, :category)
  end
end
