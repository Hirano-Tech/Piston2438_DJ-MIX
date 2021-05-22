class MusicPlayersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    if params[:category] == nil
      render action: :index
    elsif params[:category] == 'MIX MACHINE（MP3）'
      @music = MixmachineMp3Djmix.readonly.sample

      session[:already_play] = Array.new(3)
      session[:already_play].unshift @music.id
      session[:already_play].delete_at(3)

      redirect_to music_all_shuffle_play_path(id: @music.id, category: @music.category.name)
    elsif params[:category] == 'MIX MACHINE（FLAC）'
      @music = MixmachineFlacDjmix.readonly.sample

      session[:already_play] = Array.new(3)
      session[:already_play].unshift @music.id
      session[:already_play].delete_at(3)

      redirect_to music_all_shuffle_play_path(id: @music.id, category: @music.category.name)
    end
  end
end
