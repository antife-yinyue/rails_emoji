$:.push File.expand_path("../lib", __FILE__)

require "rails_emoji/version"

Gem::Specification.new do |s|
  s.name     = "rails_emoji"
  s.version  = RailsEmoji::VERSION
  s.platform = Gem::Platform::RUBY
  s.files    = Dir["{lib,vendor}/**/*"] + %w{README.md}
  s.homepage = "https://github.com/jsw0528/rails_emoji"
  s.authors  = ["Jay-Jay.Zhang (http://MrZhang.me/)"]
  s.summary  = "Emoji for Ruby on Rails"

  s.add_dependency "rails", ">= 3.1.0"
end
