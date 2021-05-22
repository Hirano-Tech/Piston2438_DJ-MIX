# ↓ User モデル テストデータ ↓
User.create(
  email: 'Information@Hirano.Mail-Box.ne.jp',
  password: 'BFjJW6xvC9SE',
)
# ↑ User モデル テストデータ ↑

[
  [1, 'MIX MACHINE（MP3）'],
  [2, 'MIX MACHINE（FLAC）'],
  [3, 'GROOVE LINE']
].each do |id, name|
  Category.create(
    {id: id, name: name}
  )
end

[
  [210412, 'MIX MACHINE〈 2021年 04月 12日 月 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 04月 12日 月 〉.mp3', '2021-04-12', 1],
  [210413, 'MIX MACHINE〈 2021年 04月 13日 火 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 04月 13日 火 〉.mp3', '2021-04-13', 1],
  [210414, 'MIX MACHINE〈 2021年 04月 14日 水 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 04月 14日 水 〉.mp3', '2021-04-14', 1],
  [210415, 'MIX MACHINE〈 2021年 04月 15日 木 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 04月 15日 木 〉.mp3', '2021-04-15', 1],
  [210419, 'MIX MACHINE〈 2021年 04月 19日 月 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 04月 19日 月 〉.mp3', '2021-04-19', 1],
  [210420, 'MIX MACHINE〈 2021年 04月 20日 火 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 04月 20日 火 〉.mp3', '2021-04-20', 1],
  [210421, 'MIX MACHINE〈 2021年 04月 21日 水 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 04月 21日 水 〉.mp3', '2021-04-21', 1],
  [210422, 'MIX MACHINE〈 2021年 04月 22日 木 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 04月 22日 木 〉.mp3', '2021-04-22', 1],
  [210506, 'MIX MACHINE〈 2021年 05月 06日 木 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 05月 06日 木 〉.mp3', '2021-05-06', 1],
  [210510, 'MIX MACHINE〈 2021年 05月 10日 月 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 05月 10日 月 〉.mp3', '2021-05-10', 1],
  [210511, 'MIX MACHINE〈 2021年 05月 11日 火 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 05月 11日 火 〉.mp3', '2021-05-11', 1],
  [210512, 'MIX MACHINE〈 2021年 05月 12日 水 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 05月 12日 水 〉.mp3', '2021-05-12', 1],
  [210513, 'MIX MACHINE〈 2021年 05月 13日 木 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 05月 13日 木 〉.mp3', '2021-05-13', 1],
  [210517, 'MIX MACHINE〈 2021年 05月 17日 月 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 05月 17日 月 〉.mp3', '2021-05-17', 1],
  [210518, 'MIX MACHINE〈 2021年 05月 18日 火 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 05月 18日 火 〉.mp3', '2021-05-18', 1],
  [210519, 'MIX MACHINE〈 2021年 05月 19日 水 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 05月 19日 水 〉.mp3', '2021-05-19', 1],
  [210520, 'MIX MACHINE〈 2021年 05月 20日 木 〉', '', 'MIX MACHINE（MP3）/MIX MACHINE〈 2021年 05月 20日 木 〉.mp3', '2021-05-20', 1]
].each do |id, name, title, s3_key, release_date, category_id|
  MixmachineMp3Djmix.create(
    {id: id, name: name, title: title, s3_key: s3_key, release_date: release_date, category_id: category_id}
  )
end

[
  [210412, 'MIX MACHINE〈 2021年 04月 12日 月 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 04月 12日 月 〉.flac', '2021-04-12', 2],
  [210413, 'MIX MACHINE〈 2021年 04月 13日 火 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 04月 13日 火 〉.flac', '2021-04-13', 2],
  [210414, 'MIX MACHINE〈 2021年 04月 14日 水 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 04月 14日 水 〉.flac', '2021-04-14', 2],
  [210415, 'MIX MACHINE〈 2021年 04月 15日 木 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 04月 15日 木 〉.flac', '2021-04-15', 2],
  [210419, 'MIX MACHINE〈 2021年 04月 19日 月 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 04月 19日 月 〉.flac', '2021-04-19', 2],
  [210420, 'MIX MACHINE〈 2021年 04月 20日 火 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 04月 20日 火 〉.flac', '2021-04-20', 2],
  [210421, 'MIX MACHINE〈 2021年 04月 21日 水 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 04月 21日 水 〉.flac', '2021-04-21', 2],
  [210422, 'MIX MACHINE〈 2021年 04月 22日 木 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 04月 22日 木 〉.flac', '2021-04-22', 2],
  [210506, 'MIX MACHINE〈 2021年 05月 06日 木 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 05月 06日 木 〉.flac', '2021-05-06', 2],
  [210510, 'MIX MACHINE〈 2021年 05月 10日 月 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 05月 10日 月 〉.flac', '2021-05-10', 2],
  [210511, 'MIX MACHINE〈 2021年 05月 11日 火 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 05月 11日 火 〉.flac', '2021-05-11', 2],
  [210512, 'MIX MACHINE〈 2021年 05月 12日 水 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 05月 12日 水 〉.flac', '2021-05-12', 2],
  [210513, 'MIX MACHINE〈 2021年 05月 13日 木 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 05月 13日 木 〉.flac', '2021-05-13', 2],
  [210517, 'MIX MACHINE〈 2021年 05月 17日 月 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 05月 17日 月 〉.flac', '2021-05-17', 2],
  [210518, 'MIX MACHINE〈 2021年 05月 18日 火 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 05月 18日 火 〉.flac', '2021-05-18', 2],
  [210519, 'MIX MACHINE〈 2021年 05月 19日 水 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 05月 19日 水 〉.flac', '2021-05-19', 2],
  [210520, 'MIX MACHINE〈 2021年 05月 20日 木 〉', '', 'MIX MACHINE（FLAC）/MIX MACHINE〈 2021年 05月 20日 木 〉.flac', '2021-05-20', 2]
].each do |id, name, title, s3_key, release_date, category_id|
  MixmachineFlacDjmix.create(
    {id: id, name: name, title: title, s3_key: s3_key, release_date: release_date, category_id: category_id}
  )
end

[
  [210412, 'GROOVE LINE〈 2021年 04月 12日 月 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 04月 12日 月 〉.mp3', '2021-04-12', 3],
  [210413, 'GROOVE LINE〈 2021年 04月 13日 火 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 04月 13日 火 〉.mp3', '2021-04-13', 3],
  [210414, 'GROOVE LINE〈 2021年 04月 14日 水 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 04月 14日 水 〉.mp3', '2021-04-14', 3],
  [210415, 'GROOVE LINE〈 2021年 04月 15日 木 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 04月 15日 木 〉.mp3', '2021-04-15', 3],
  [210419, 'GROOVE LINE〈 2021年 04月 19日 月 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 04月 19日 月 〉.mp3', '2021-04-19', 3],
  [210420, 'GROOVE LINE〈 2021年 04月 20日 火 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 04月 20日 火 〉.mp3', '2021-04-20', 3],
  [210421, 'GROOVE LINE〈 2021年 04月 21日 水 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 04月 21日 水 〉.mp3', '2021-04-21', 3],
  [210422, 'GROOVE LINE〈 2021年 04月 22日 木 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 04月 22日 木 〉.mp3', '2021-04-22', 3],
  [210506, 'GROOVE LINE〈 2021年 05月 06日 木 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 05月 06日 木 〉.mp3', '2021-05-06', 3],
  [210510, 'GROOVE LINE〈 2021年 05月 10日 月 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 05月 10日 月 〉.mp3', '2021-05-10', 3],
  [210511, 'GROOVE LINE〈 2021年 05月 11日 火 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 05月 11日 火 〉.mp3', '2021-05-11', 3],
  [210512, 'GROOVE LINE〈 2021年 05月 12日 水 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 05月 12日 水 〉.mp3', '2021-05-12', 3],
  [210513, 'GROOVE LINE〈 2021年 05月 13日 木 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 05月 13日 木 〉.mp3', '2021-05-13', 3],
  [210517, 'GROOVE LINE〈 2021年 05月 17日 月 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 05月 17日 月 〉.mp3', '2021-05-17', 3],
  [210518, 'GROOVE LINE〈 2021年 05月 18日 火 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 05月 18日 火 〉.mp3', '2021-05-18', 3],
  [210519, 'GROOVE LINE〈 2021年 05月 19日 水 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 05月 19日 水 〉.mp3', '2021-05-19', 3],
  [210520, 'GROOVE LINE〈 2021年 05月 20日 木 〉', 'GROOVE-LINE/GROOVE LINE〈 2021年 05月 20日 木 〉.mp3', '2021-05-20', 3]
].each do |id, name, s3_key, release_date, category_id|
  GroovelineProgram.create(
    {id: id, name: name, s3_key: s3_key, release_date: release_date, category_id: category_id}
  )
end

# [].each do |name, artist, music_library_id|
#   SongList.create(
#     {name: name, artist: artist, music_library_id: music_library_id}
#   )
# end
