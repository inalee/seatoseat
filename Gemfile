source 'https://rubygems.org'

gem 'acts_as_votable', '~> 0.10.0'
gem 'rails', '4.2.5'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# 회원가입 솔루션
gem 'devise'
# 부트스트랩
 gem 'bootstrap-sass', '~> 3.3.6'
# 부트스트랩 form tag
#gem 'bootstrap_form'
# 부트스트랩 devise
#gem 'devise-bootstrap-views'

# rails 전반적인 locale 설정
gem 'rails-i18n'
# 한글화된 devise
gem 'devise-i18n'
# 페이지네이션
gem 'kaminari'
# 타임스탬프를 한국 시간으로 보기쉽게 하기
gem 'local_time'

# gem 'kaminari-bootstrap', '~> 3.0.1'

# 텍스트 에디터
gem 'tinymce-rails'

group :production do
  # PostgreSQL
  gem 'pg'
  # 레일즈 배포 부적
  gem 'rails_12factor'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'byebug'
  # 데이터베이스 시각화
  gem 'rails_db'
  # 업그레이드 된 IRB
  gem 'pry'
  # 업그레이드 된 레일즈 용 콘솔
  gem 'pry-rails'
  # 이쁘게 출력하기
  gem 'awesome_print'
  # 더미데이터 만들기
  gem 'faker'
  
  gem 'carrierwave'
  # 이미지 업로드
  gem 'fog-aws'

  gem 'mini_magick'
  #썸네일 for carrierwave
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end