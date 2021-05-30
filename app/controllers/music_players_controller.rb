class MusicPlayersController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def create
    if params[:category] == nil
      render action: :index
    else
      @music = MixmachineDjmix.readonly.sample

      session[:already_play] = Array.new(5)
      session[:already_play].unshift @music.id
      session[:already_play].delete_at(5)

      redirect_to music_all_shuffle_play_path(id: @music.id, category: params[:category])
    end
  end
end
