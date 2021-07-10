<img src='https://due0xnee3ffkt.cloudfront.net/Images/GROOVE-LINE.webp' alt='【J-WAVE】 GROOVE LINE' title='【J-WAVE】 GROOVE LINE' width='40%' />

## 🖥　① 技術仕様（ローカル環境）

- **Ruby** Version 3.0.1
- **Ruby on Rails** Version 6.1.3.2
- **MySQL** Version 8.0.25
- **Docker** Version 20.10.7

##### ❔ Q＆A：なぜ、開発環境に Docker を使っているの？

  - Docker は、Linux 環境（及び、CUI コマンド）に慣れるためです。

## 🌏　② 技術仕様（本番環境）

- **Elastic Compute Cloud**
  - Region：アジア・パシフィック（ムンバイ）
  - インスタンスタイプ：t3a.nano
  - 予算：＄0.0031 × 720 時間 = ＄2.232 ≒ ￥247.29
  - URL：権利上の問題で、一般公開できません。  
※ JASRAC にお支払いしていただければ考えます 😇

- **Relational Database Service**
  - Region：米国西部（オレゴン）
  - インスタンスタイプ：db.t2.micro（無料利用枠） 

- **Simple Storage Service**
- **Cloud Front**
- **Virtual Private Cloud**

##### ❔ Q＆A：なぜ、別リージョンに配置しているのですか？

  - 普段から、プログラミング学習，個人開発中の BGM としてノリノリ🥳 で使用しているため、最安値で利用できるアジア・パシフィック（ムンバイ）を採択しました。

##### ❔ Q＆A：実際、別々のリージョンで運用してみてどうですか？

  - EC2，RDS 共に、大阪リージョンを使用していたときと比較すると、ワンテンポ レスポンスは落ちてます。１分間に数千…数万のリクエストに応えるサービスと考えると…  

## ⚙️　③ Dockerfile 備忘録

```Dockerfile
FROM ruby:3.0.1

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt-get update && apt-get install -y vim nodejs \
    && npm install --global yarn && gem install rails -v '6.1.3.2'

WORKDIR /var/www/'アプリケーション名'

ADD . /
RUN bundle install
```

> ###### 🔗　参考資料
> > ● [Docker を Compose しないで、ローカル環境を構築する。| Zenn](https://zenn.dev/hirano_tech/articles/68dbdc185dfb61)

## 🗄　④ データベース設計

### ● ピストン西沢 Non-STOP DJMIX ♪ の各音楽ファイルを管理するテーブル（全レコード数：99件）

|     Field    |       Type        | Null | Key | Default |     Extra      |
|:------------:|:-----------------:|:----:|:---:|:-------:|:--------------:|
|      id      | SMALLINT UNSIGNED |  NO  | PRI |  NULL   | auto_increment |
|     name     |   VARCHAR(255)    |  NO  |     |  NULL   |                |
|    title     |   VARCHAR(255)    |  NO  |     |  NULL   |                |
| release_date |       DATE        |  NO  |     |  NULL   |                |

```SQL
$mysql> CREATE TABLE IF NOT EXISTS 'テーブル名'(
  id SMALLINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  title VARCHAR(255) NOT NULL,
  release_date DATE NOT NULL
) CHARACTER SET utf8mb4;
```

### ● DJ MIX で使用された曲目を管理するテーブル（全レコード数：546件）

|   Field  |       Type        | Null | Key | Default |     Extra      |
|:--------:|:-----------------:|:----:|:---:|:-------:|:--------------:|
|    id    |  BIGINT UNSIGNED  |  NO  | PRI |  NULL   | auto_increment |
|   name   |   VARCHAR(255)    |  NO  |     |  NULL   |                |
|  artist  |   VARCHAR(255)    |  NO  |     |  NULL   |                |
| djmix_id | SMALLINT UNSIGNED |  NO  | MUL |  NULL   |                |

```SQL
$mysql> CREATE TABLE IF NOT EXISTS 'テーブル名'(
  id BIGINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  artist VARCHAR(255) NOT NULL,
  djmix_id SMALLINT UNSIGNED NOT NULL,

  FOREIGN KEY (djmix_id) REFERENCES piston2438_djmixes(id)
) CHARACTER SET utf8mb4;
```

> ###### 🔗　参考資料
> > ● [DJ MIX曲目 一覧データ Seeds ファイル](https://github.com/Hirano-Tech/Seeding-Vault/blob/master/Ruby_Piston2438_DJ-Music-Lists.rb)

## 🎶　⑤ 音楽を再生するための処理の流れ

```Ruby
session[:'セッション名'] = Array.new
  # トップページから最初に音楽を再生する際に、セッションをリセットしています。

# データベースから必要となるレコードを読み込みます。
'モデル名'.select(:id).readonly
  # 全曲シャッフル再生をする場合。
'モデル名'.select(:id).readonly.where(release_date: Date.parse('日時').beginning_of_day..Date.parse('日時').end_of_day)
  # 期間を指定してシャッフル再生をする場合。

'モデルからレコードを読み込む処理'.each do |'変数名'|
  session[:'セッション名'] << '変数名'[:id]
    # 読み込んだ各レコードの ID をセッションに順次、格納しています。
    # ID しか取り扱わないため、'.select(:id)' で ID のみを読み込んでいます。
    # 上書き保存をすることはないため、'.readonly' で読み取り専用として取り出しています。
end

session[:'セッション名'].uniq!
  # 重複する値を削除します。
session[:'セッション名'].shuffle!
  # 最後に、配列の中身を破壊的にシャッフルして並び順を入れ替えています。
```

## 🖥　⑥ 実際の画面 サンプル画像

##### ● トップページ サンプル画像

<img src='https://due0xnee3ffkt.cloudfront.net/Images/Player_トップ画面.webp' alt='【画像】トップページ サンプル画像' title='トップページ サンプル画像' width='25%' />

##### ● プレイヤー画面 サンプル画像

<img src='https://due0xnee3ffkt.cloudfront.net/Images/Player_プレイヤー画面.webp' alt='【画像】プレイヤー画面 サンプル画像' title='【画像】プレイヤー画面 サンプル画像' width='25%' />

---

## 👨🏻‍💻 ⑦ 開発者プロフィール

- GitHub：[GitHub](https://github.com/Hirano-Tech)
  - [現在 個人開発している別のアプリケーション | GitHub](https://github.com/Hirano-Tech/Personal_Coordinator)
- Twitter：[@Hirano_Tech](https://twitter.com/Hirano_Tech)
- Zenn：[Zenn](https://zenn.dev/hirano_tech)
