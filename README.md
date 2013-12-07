# [Emoji](http://www.emoji-cheat-sheet.com/) for Ruby on Rails

![:kiss:](https://github.com/jsw0528/rails_emoji/raw/master/vendor/assets/images/emojis/kiss.png)
![:dancer:](https://github.com/jsw0528/rails_emoji/raw/master/vendor/assets/images/emojis/dancer.png)
![:octocat:](https://github.com/jsw0528/rails_emoji/raw/master/vendor/assets/images/emojis/octocat.png)
![:trollface:](https://github.com/jsw0528/rails_emoji/raw/master/vendor/assets/images/emojis/trollface.png)

---

## Installation

* Add to your Gemfile: `gem 'rails_emoji', '~> 1.7.1'`, then: `$ bundle`.

* Or, download the [rails_emoji-1.7.1.gem](https://rubygems.org/downloads/rails_emoji-1.7.1.gem), then `$ gem install ./rails_emoji-1.7.1.gem --no-ri --no-rdoc`.

## Usage

```ruby
':smile:'.emojify
# <img src="/assets/emojis/smile.png" class="emoji" width="20" height="20" alt=":smile:" title=":smile:" />

RailsEmoji.render ':smile:', size: '64x64', class: 'emoji-smile'
# <img src="/assets/emojis/smile.png" class="emoji-smile" width="64" height="64" alt=":smile:" title=":smile:" />

RailsEmoji.render ':smile:', size: nil, title: 'Smile!'
# <img src="/assets/emojis/smile.png" class="emoji" alt=":smile:" title="Smile!" />

RailsEmoji.render ':smile:', size: 32, host: 'http://MrZhang.me'
# <img src="http://MrZhang.me/assets/emojis/smile.png" class="emoji" width="32" height="32" alt=":smile:" title=":smile:" />
```

## License

Licensed under the [MIT License](http://www.opensource.org/licenses/mit-license.php).
