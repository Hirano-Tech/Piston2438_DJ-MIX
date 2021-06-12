# [].each do |id, name, release_date|
#   GroovelineProgram.create({id: id, name: name, release_date: release_date})
# end

[
  [1774, 'MIX MACHINE〈 2020年 12月 14日 月 〉', '今週は気合マシマシ！愛情マシマシ！のDJだよMIX!!', '2020-12-14'],
  [1776, 'MIX MACHINE〈 2020年 12月 15日 火 〉', 'いろんな曲でみんなで踊ろうMIX!!', '2020-12-15'],
  [1778, 'MIX MACHINE〈 2020年 12月 16日 水 〉', '今日もTシャツプレゼントMIX!!!!!', '2020-12-16'],
  [1780, 'MIX MACHINE〈 2020年 12月 17日 木 〉', 'DJマシーンが壊れても続行MIX!!!!!!', '2020-12-17'],
  [1782, 'MIX MACHINE〈 2020年 12月 21日 月 〉', 'ヒット曲を次々カットイン!!!', '2020-12-21'],
  [1784, 'MIX MACHINE〈 2020年 12月 22日 火 〉', 'ピストンさんのリミックス作品をたくさんかけちゃうよ!!', '2020-12-22'],
  [1786, 'MIX MACHINE〈 2020年 12月 23日 水 〉', 'DJに乗せて瑛人さんに歌ってもらいたいなMIX!!!', '2020-12-23'],
  [1788, 'MIX MACHINE〈 2020年 12月 24日 木 〉', 'クリスマスMIX!!!', '2020-12-24'],
  [1790, 'MIX MACHINE〈 2020年 12月 28日 月 〉', 'ラスト1週間頑張ろうぜMIX!!', '2020-12-28'],
  [1792, 'MIX MACHINE〈 2020年 12月 29日 火 〉', 'ノリノリ!悪ノリ!?MIX!!', '2020-12-29'],
  [1794, 'MIX MACHINE〈 2020年 12月 30日 水 〉', '今日は100曲かけられるかなMIX!!!', '2020-12-30'],
  [1796, 'MIX MACHINE〈 2020年 12月 31日 木 〉', 'みんな良いお年をMIX!!!!?', '2020-12-31']
].each do |id, name, title, release_date|
  MixmachineDjmix.create({id: id, name: name, title: title, release_date: release_date})
end

# [].each do |artist, mixmachine_djmix_id|
#   SongList.create({artist: artist, mixmachine_djmix_id: mixmachine_djmix_id})
# end
