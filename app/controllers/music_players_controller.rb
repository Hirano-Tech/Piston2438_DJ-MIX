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
          OR name LIKE '%ドラえもん'
          OR name LIKE '%ポケモンマスター'
          OR name LIKE 'ようかい体操第一%'
          OR name='残酷な天使のテーゼ'
          OR name='にゃん酷なにゃんこのテーゼ'
          OR name='紅蓮華'
          OR name LIKE 'さんぽ%'
          OR name='PPAP'
          OR name='PIKACHU'
          OR name='パプリカ'
          OR name LIKE '%ドラゴンクエスト%'
          OR name LIKE '呼び込み君%'
      ").each do |djmix|
        session[:playlists] << djmix[:djmix_id]
      end

    elsif music_params[:play_method] == 'idol'
      DjmixList.find_by_sql("
        SELECT DISTINCT djmix_id FROM music_lists
          WHERE artist='SMAP'
          OR artist='嵐'
          OR artist='AKB48'
          OR artist='TWICE'
          OR artist='NIZIU'
      ").each do |djmix|
        session[:playlists] << djmix[:djmix_id]
      end

    elsif music_params[:play_method] == '2021-06'
      Piston2438Mix.find_by_sql("
        SELECT id FROM piston2438_djmixes WHERE release_date >= '2021-06-01'
      ").each do |djmix|
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
