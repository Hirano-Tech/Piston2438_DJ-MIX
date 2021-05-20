class Music::AllShufflePlaysController < ApplicationController
  before_action :authenticate_user!

  def index
    redirect_to(action: 'show', id: Music.readonly.sample)
  end

  def show
    @music = Music.find(params[:id])
  end
end
