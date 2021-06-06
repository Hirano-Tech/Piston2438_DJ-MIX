class SongList < ApplicationRecord
  belongs_to :mixmachine_djmix

  # SongList.group(:artist).order('count_artist DESC').count(:artist)
end
