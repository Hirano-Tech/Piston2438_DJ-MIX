class Category < ApplicationRecord
  has_many(:mixmachine_mp3_djmixes)
  has_many(:mixmachine_flac_djmixes)
  has_many(:grooveline_programs)
end
