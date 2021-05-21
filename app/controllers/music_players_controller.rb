class MusicPlayersController < ApplicationController
  before_action :authenticate_user!

  def index
    @dj_all_mp3 = MusicLibrary.readonly.where(category: 'MIX MACHINE（MP3）').select(:id).sample
    @dj_all_flac = MusicLibrary.readonly.where(category: 'MIX MACHINE（FLAC）').select(:id).sample
  end
end
