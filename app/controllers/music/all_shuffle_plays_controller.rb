class Music::AllShufflePlaysController < ApplicationController
  before_action :authenticate_user!

  def index
    if request.fullpath.include? 'all_mp3-shuffle'
      @music = MixmachineDjmix.readonly.sample
      while session[:already_play].include?(@music.id) do
        @music = MixmachineDjmix.readonly.sample
      end

      session[:already_play].unshift @music.id
      session[:already_play].delete_at(5)
      redirect_to(action: 'show', id: @music.id, category: 'MP3')
    elsif request.fullpath.include? 'all_flac-shuffle'
      @music = MixmachineDjmix.readonly.sample
      while session[:already_play].include?(@music.id) do
        @music = MixmachineDjmix.readonly.sample
      end

      session[:already_play].unshift @music.id
      session[:already_play].delete_at(5)
      redirect_to(action: 'show', id: @music.id, category: 'FLAC')
    end
  end

  def show
    @music = MixmachineDjmix.readonly.find(params[:id])
  end
end
