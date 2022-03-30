source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
  # https://rubygems.org/gems/rails | RubyGems
  # プログラマーのために最適化されたフルスタックの Web フレームワーク

gem 'mysql2', '~> 0.5'
  # https://rubygems.org/gems/mysql2 | RubyGems
  # Ruby 用の MySQL ライブラリ

gem 'turbolinks', '~> 5'
  # https://rubygems.org/gems/turbolinks | RubyGems
  # Turbolinks5 に対応する Ruby on Rails エンジン

gem 'bootsnap', '>= 1.4.4', require: false
  # https://rubygems.org/gems/bootsnap | RubyGems
  # Ruby on Rails アプリケーションの起動を高速化する。

gem 'puma', '~> 5.6'
  # https://rubygems.org/gems/puma | RubyGems
  # Ruby アプリケーションのために開発環境と本番環境で使用できる Web サーバ

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
  # https://rubygems.org/gems/tzinfo-data | RubyGems

gem 'sass-rails', '>= 6'
  # https://rubygems.org/gems/sass-rails | RubyGems
  # Ruby on Rails のアセットパイプラインで Sass を使用するための RubyGems

gem 'bootstrap', '~> 5.0.1'
  # https://rubygems.org/gems/bootstrap | RubyGems
  # レスポンシブでモバイルファーストなウェブプロジェクトを開発するための、HTML，CSS，JavaScriptフレームワークです。

gem 'font-awesome-sass', '~> 5.15', '>= 5.15.1'
  # https://rubygems.org/gems/font-awesome-sass | RubyGems
  # Ruby on Rails で Font Awesome を使用するための Ruby Gems

gem 'webpacker', '~> 5.0'
  # https://rubygems.org/gems/webpacker | RubyGems
  # Ruby on Rails の JavaScript モジュール

gem 'jbuilder', '~> 2.7'
  # https://rubygems.org/gems/jbuilder | RubyGems

gem 'jquery-rails'
  # https://rubygems.org/gems/jquery-rails | RubyGems
  # Ruby on Rails 4.0 以降のための jQuery と jQuery-ujs ドライバを提供します。

gem 'devise', '~> 4.8'
  # https://rubygems.org/gems/jquery-rails | RubyGems
  # Ruby on Rails のための認証ソリューション

gem 'pry', '~> 0.14.1'
  # https://rubygems.org/gems/devise | RubyGems
  # Irb の上位互換にあたるディベロッパーコンソール

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
    # https://rubygems.org/gems/byebug | RubyGems
    # Ruby のためのデバッガ
end

group :development do
  gem 'rack-mini-profiler', '~> 2.0'
    # https://rubygems.org/gems/rack-mini-profiler | RubyGems

  gem 'listen', '~> 3.3'
    # https://rubygems.org/gems/listen | RubyGems
    # ファイルの変更を通知する。

  gem 'spring'
    # https://rubygems.org/gems/spring | RubyGems
    # アプリケーションを高速化するためにプリロードする。

  gem 'web-console', '>= 4.1.0'
    # https://rubygems.org/gems/web-console | RubyGems
    # Ruby on Rails アプリケーションのためのデバッグツール
end

group :test do
  gem 'capybara', '>= 3.26'
    # https://rubygems.org/gems/capybara | RubyGems
    # Web アプリケーションの統合テストツール

  gem 'selenium-webdriver'
    # https://rubygems.org/gems/selenium-webdriver | RubyGems
    # Web サイトの自動テストをおこなうためのツール

  gem 'webdrivers'
    # https://rubygems.org/gems/webdrivers | RubyGems
    # Selenium による自動テストを実行するためのツール
end

group :production do
  gem 'unicorn', '~> 6.0'
    # https://rubygems.org/gems/unicorn | RubyGems
    # 低遅延・高帯域の接続で高速なクライアントにサービスを提供できる UNIX ライクな HTTP サーバ
end
