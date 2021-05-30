# ↓ User モデル テストデータ ↓
User.create(
  email: Rails.application.credentials.User[:Mail],
  password: Rails.application.credentials.User[:Password]
)
# ↑ User モデル テストデータ ↑

[
  [210308, 'MIX MACHINE〈 2021年 03月 08日 月 〉', 'ちっちゃな頃は優等生?悪ガキ?どっち!?MIX!!', '2021-03-08'],
  [210309, 'MIX MACHINE〈 2021年 03月 09日 火 〉', '踊れる音楽たっぷりでお送り!!', '2021-03-09'],
  [210310, 'MIX MACHINE〈 2021年 03月 10日 水 〉', 'にゃん酷なMIX!!!', '2021-03-10'],
  [210311, 'MIX MACHINE〈 2021年 03月 11日 木 〉', '最後は愛が勝つMIX!!!!', '2021-03-11'],
  [210412, 'MIX MACHINE〈 2021年 04月 12日 月 〉', '気合を入れて盛り上がる！MIX!!', '2021-04-12'],
  [210413, 'MIX MACHINE〈 2021年 04月 13日 火 〉', 'スタッフが間違い正さないからリスナーに怒られたMIX!!!!', '2021-04-13'],
  [210414, 'MIX MACHINE〈 2021年 04月 14日 水 〉', '写真撮影から動画編集まで大忙しMIX!!!!!!', '2021-04-14'],
  [210415, 'MIX MACHINE〈 2021年 04月 15日 木 〉', 'ダンス☆マンと一緒にFUNKYなMIX!!', '2021-04-15'],
  [210419, 'MIX MACHINE〈 2021年 04月 19日 月 〉', 'MIXに合わせてプロがDANCING!!映像とともに楽しんでね!!', '2021-04-19'],
  [210420, 'MIX MACHINE〈 2021年 04月 20日 火 〉', 'YouTubeカクカクでごめんねMIX!!!!', '2021-04-20'],
  [210421, 'MIX MACHINE〈 2021年 04月 21日 水 〉', 'GALFY西沢だぜMIX!!!!!', '2021-04-21'],
  [210422, 'MIX MACHINE〈 2021年 04月 22日 木 〉', '今日は神が降臨されてテンションアゲアゲMIX!!', '2021-04-22'],
  [210506, 'MIX MACHINE〈 2021年 05月 06日 木 〉', 'ごぶさたスクラッチ！はたらきたくないMIX！！', '2021-05-06'],
  [210510, 'MIX MACHINE〈 2021年 05月 10日 月 〉', '連休明けにバリバリMIX!!', '2021-05-10'],
  [210511, 'MIX MACHINE〈 2021年 05月 11日 火 〉', 'はたらきたくないね〜MIX!!!!', '2021-05-11'],
  [210512, 'MIX MACHINE〈 2021年 05月 12日 水 〉', 'YouTubeではしもっちゃんが踊ってるYO!!!!', '2021-05-12'],
  [210513, 'MIX MACHINE〈 2021年 05月 13日 木 〉', '本当に生でスクラッチしてるんだよMIX!!', '2021-05-13'],
  [210517, 'MIX MACHINE〈 2021年 05月 17日 月 〉', '邦楽も洋楽もなんでもござれMIX!!', '2021-05-17'],
  [210518, 'MIX MACHINE〈 2021年 05月 18日 火 〉', '今日はおしゃれソングMIX!!!!', '2021-05-18'],
  [210519, 'MIX MACHINE〈 2021年 05月 19日 水 〉', '星野源さん新垣結衣さん結婚おめでとうMIX!!!!!', '2021-05-19'],
  [210520, 'MIX MACHINE〈 2021年 05月 20日 木 〉', '今日は80年代ディスコ風でお届けMIX!!', '2021-05-20']
].each do |id, name, title, release_date|
  MixmachineDjmix.create({id: id, name: name, title: title, release_date: release_date})
end

[
  [210308, 'GROOVE LINE〈 2021年 03月 08日 月 〉', '2021-03-08'],
  [210309, 'GROOVE LINE〈 2021年 03月 09日 火 〉', '2021-03-09'],
  [210310, 'GROOVE LINE〈 2021年 03月 10日 水 〉', '2021-03-10'],
  [210311, 'GROOVE LINE〈 2021年 03月 11日 木 〉', '2021-03-11'],
  [210412, 'GROOVE LINE〈 2021年 04月 12日 月 〉', '2021-04-12'],
  [210413, 'GROOVE LINE〈 2021年 04月 13日 火 〉', '2021-04-13'],
  [210414, 'GROOVE LINE〈 2021年 04月 14日 水 〉', '2021-04-14'],
  [210415, 'GROOVE LINE〈 2021年 04月 15日 木 〉', '2021-04-15'],
  [210419, 'GROOVE LINE〈 2021年 04月 19日 月 〉', '2021-04-19'],
  [210420, 'GROOVE LINE〈 2021年 04月 20日 火 〉', '2021-04-20'],
  [210421, 'GROOVE LINE〈 2021年 04月 21日 水 〉', '2021-04-21'],
  [210422, 'GROOVE LINE〈 2021年 04月 22日 木 〉', '2021-04-22'],
  [210506, 'GROOVE LINE〈 2021年 05月 06日 木 〉', '2021-05-06'],
  [210510, 'GROOVE LINE〈 2021年 05月 10日 月 〉', '2021-05-10'],
  [210511, 'GROOVE LINE〈 2021年 05月 11日 火 〉', '2021-05-11'],
  [210512, 'GROOVE LINE〈 2021年 05月 12日 水 〉', '2021-05-12'],
  [210513, 'GROOVE LINE〈 2021年 05月 13日 木 〉', '2021-05-13'],
  [210517, 'GROOVE LINE〈 2021年 05月 17日 月 〉', '2021-05-17'],
  [210518, 'GROOVE LINE〈 2021年 05月 18日 火 〉', '2021-05-18'],
  [210519, 'GROOVE LINE〈 2021年 05月 19日 水 〉', '2021-05-19'],
  [210520, 'GROOVE LINE〈 2021年 05月 20日 木 〉', '2021-05-20']
].each do |id, name, release_date|
  GroovelineProgram.create({id: id, name: name, release_date: release_date})
end

# [
#   [1, 'MIX MACHINE（MP3）'],
#   [2, 'MIX MACHINE（FLAC）'],
#   [3, 'GROOVE LINE']
# ].each do |id, name|
#   Category.create({id: id, name: name})
# end

# [].each do |name, artist, music_library_id|
#   SongList.create(
#     {name: name, artist: artist, music_library_id: music_library_id}
#   )
# end
