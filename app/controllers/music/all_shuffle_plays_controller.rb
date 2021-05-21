class Music::AllShufflePlaysController < ApplicationController
  before_action :authenticate_user!

  def index
    if request.fullpath.include? 'all_mp3-shuffle'
      redirect_to(action: 'show', id: MusicLibrary.readonly.where(category: 'MIX MACHINE（MP3）').select(:id).sample)
    elsif request.fullpath.include? 'all_flac-shuffle'
      redirect_to(action: 'show', id: MusicLibrary.readonly.where(category: 'MIX MACHINE（FLAC）').select(:id).sample)
    end


  end

  def show
    @music = MusicLibrary.readonly.select(:id, :name, :category, :s3_key, :release_date).find(params[:id])
  end
end
