class DjmixList < ApplicationRecord
  self.table_name = 'music_lists'

  belongs_to :djmix, class_name: 'Piston2438Mix', foreign_key: 'djmix_id'

  # アーティストを回数の多い順に並び替える。
    # SELECT artist, COUNT(*) AS ArtistCount FROM music_lists GROUP BY artist HAVING (ArtistCount > 2) ORDER BY ArtistCount DESC;
end
