class MusicPlayersController < ApplicationController
  before_action :authenticate_user!

  def index
    session[:playlists] = nil
  end

  def create
    session[:playlists] = Array.new

    if music_params[:play_method] == '全曲シャッフル再生'
      Piston2438Mix.select(:id).readonly.each do |djmix|
        session[:playlists] << djmix[:id]
      end

    elsif music_params[:play_method] == 'anime'
      DjmixList.find_by_sql("
        SELECT DISTINCT djmix_id FROM music_lists
          WHERE name LIKE 'アンパンマン%'
          OR name LIKE '%ポケモンマスター'
          OR name LIKE 'ようかい体操第一%'
          OR name='残酷な天使のテーゼ'
          OR name='にゃん酷なにゃんこのテーゼ'
          OR name='紅蓮華'
          OR name='PPAP'
          OR name='PIKACHU'
          OR name='パプリカ'
          OR name LIKE '%ドラゴンクエスト%'
          OR name LIKE '呼び込み君%'
      ").each do |djmix|
        session[:playlists] << djmix[:djmix_id]
      end

    elsif music_params[:play_method] == '2021-06'
      Piston2438Mix.select(:id).readonly.where(release_date: Date.parse('2021-06-01').beginning_of_day..Date.parse('2021-06-30').end_of_day).each do |djmix|
        session[:playlists] << djmix[:id]
      end

    elsif music_params[:play_method] == '2021-05'
      Piston2438Mix.select(:id).readonly.where(release_date: Date.parse('2021-05-06').beginning_of_day..Date.parse('2021-05-31').end_of_day).each do |djmix|
        session[:playlists] << djmix[:id]
      end

    elsif music_params[:play_method] == '2021-04'
      Piston2438Mix.select(:id).readonly.where(release_date: Date.parse('2021-04-12').beginning_of_day..Date.parse('2021-04-22').end_of_day).each do |djmix|
        session[:playlists] << djmix[:id]
      end
    end

    session[:playlists].uniq!
    session[:playlists].shuffle!
    redirect_to music_playlist_theme_path(id: session[:playlists].shift, category: music_params[:category])
  end

  private
  def music_params
    params.permit(:play_method, :category)
  end
end
