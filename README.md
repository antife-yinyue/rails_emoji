# [Emoji](http://www.emoji-cheat-sheet.com/) for Ruby on Rails

![:kiss:](https://github.com/jsw0528/rails_emoji/raw/master/vendor/assets/images/emojis/kiss.png)
![:dancer:](https://github.com/jsw0528/rails_emoji/raw/master/vendor/assets/images/emojis/dancer.png)
![:octocat:](https://github.com/jsw0528/rails_emoji/raw/master/vendor/assets/images/emojis/octocat.png)
![:trollface:](https://github.com/jsw0528/rails_emoji/raw/master/vendor/assets/images/emojis/trollface.png)

---

## Installation

* Add to your Gemfile: `gem 'rails_emoji', '~> 1.4'`, then: `$ bundle`.

* Or, download the [rails_emoji-1.4.gem](https://rubygems.org/downloads/rails_emoji-1.4.gem), then `$ gem install ./rails_emoji-1.4.gem --no-ri --no-rdoc`.

## Usage

```ruby
":smile:".emojify
# output: "<img src="/assets/emojis/smile.png" width="20" height="20" title=":smile:" alt=":smile:" class="emoji" />"

RailsEmoji.render ":smile:", :host => "http://MrZhang.me", :size => 64, :class => "emoji-smile"
# output: "<img src="http://MrZhang.me/assets/emojis/smile.png" width="64" height="64" title=":smile:" alt=":smile:" class="emoji-smile" />"
```

## License

Licensed under the [MIT License](http://www.opensource.org/licenses/mit-license.php).
