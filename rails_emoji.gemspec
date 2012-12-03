$:.push File.expand_path('../lib', __FILE__)

require 'rails_emoji/version'

Gem::Specification.new do |s|
  s.name     = 'rails_emoji'
  s.version  = RailsEmoji::VERSION
  s.summary  = 'Emoji for Ruby on Rails'
  s.platform = Gem::Platform::RUBY
  s.files    = Dir['{lib,vendor}/**/*'] + %w{README.md}
  s.author   = 'junjun.zhang <http://MrZhang.me>'
  s.homepage = 'https://github.com/jsw0528/rails_emoji'
  s.license  = 'MIT'

  s.add_dependency 'rails', '>= 3.1.0'
end
