class Music::AllShufflePlaysController < ApplicationController
  before_action :authenticate_user!

  def index
    if request.fullpath.include? 'all_mp3-shuffle'
      @music = MixmachineMp3Djmix.readonly.sample
      while session[:already_play].include?(@music.id) do
        @music = MixmachineMp3Djmix.readonly.sample
      end

      session[:already_play].unshift @music.id
      session[:already_play].delete_at(3)
      redirect_to(action: 'show', id: @music.id, category: @music.category.name)
    elsif request.fullpath.include? 'all_flac-shuffle'
      @music = MixmachineFlacDjmix.readonly.sample
      while session[:already_play].include?(@music.id) do
        @music = MixmachineFlacDjmix.readonly.sample
      end

      session[:already_play].unshift @music.id
      session[:already_play].delete_at(3)
      redirect_to(action: 'show', id: @music.id, category: @music.category.name)
    end


  end

  def show
    if params[:category] == 'MIX MACHINE（MP3）'
      @music = MixmachineMp3Djmix.readonly.select(:id, :name, :title, :s3_key, :release_date).find(params[:id])
    elsif params[:category] == 'MIX MACHINE（FLAC）'
      @music = MixmachineFlacDjmix.readonly.select(:id, :name, :title, :s3_key, :release_date).find(params[:id])
    end
  end
end
