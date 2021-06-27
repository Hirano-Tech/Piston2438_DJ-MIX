class MusicPlayersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    session[:playlists] = Array.new

    if music_params[:play_method] == '01'
      session[:theme] = '全曲シャッフル'

      Piston2438Mix.select(:id).readonly.each do |djmix|
        session[:playlists] << djmix[:id]
      end

    elsif music_params[:play_method] == '02'
      session[:theme] = '最新版'

      Piston2438Mix.select(:id).readonly.where(release_date: Date.parse('2021-06-14').beginning_of_day..Date.parse('2021-06-23').end_of_day).each do |djmix|
        session[:playlists] << djmix[:id]
      end

    # elsif music_params[:play_method] == '03'
    #   session[:theme] = 'アンパンマン'

    #   SongList.where(artist: 'ドリーミング').select(:id, :mixmachine_djmix_id).readonly.each do |djmix|
    #     session[:playlists] << djmix[:mixmachine_djmix_id]
    #   end

    # elsif music_params[:play_method] == '04'
    #   session[:theme] = 'アニメソング'

    #   SongList.where(artist: ['ドリーミング', 'MAO', '松本梨香', '井上あずみ', '高橋洋子']).select(:id, :mixmachine_djmix_id).readonly.each do |djmix|
    #     session[:playlists] << djmix[:mixmachine_djmix_id]
    #   end

    # elsif music_params[:play_method] == '05'
    #   session[:theme] = 'お気に入り'

    #   favorite = [
    #     'ドリーミング', 'MAO', '松本梨香', '井上あずみ', '高橋洋子',
    #     'SMAP', '嵐',
    #     'TWICE', 'NIZIU',
    #     'あいみょん', 'BLACK BISCUITS', '打首獄門同好会', '北島三郎', '氷川きよし',
    #     'DANCE MAN', 'さりけい', '呼び込み君'
    #   ]

    #   SongList.where(artist: favorite).select(:id, :mixmachine_djmix_id).readonly.each do |djmix|
    #     session[:playlists] << djmix[:mixmachine_djmix_id]
    #   end
    end

    session[:playlists].uniq!
    session[:playlists].shuffle!
    redirect_to music_playlist_theme_path(id: session[:playlists].shift, category: music_params[:category], theme: session[:theme])
  end

  private
  def music_params
    params.permit(:play_method, :category)
  end
end
