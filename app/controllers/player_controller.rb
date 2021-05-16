class PlayerController < ApplicationController
  def index
    @music = Music.readonly.sample
  end
end
