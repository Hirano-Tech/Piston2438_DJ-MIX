class Piston2438Mix < ApplicationRecord
  self.table_name = 'piston2438_djmixes'

  has_many :music_lists, class_name: 'DjmixList', foreign_key: 'djmix_id'
end
