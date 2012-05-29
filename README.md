# [Emoji](http://www.emoji-cheat-sheet.com/) for Ruby on Rails

---

## Installation

Download the [rails_emoji-1.0.gem](https://github.com/jsw0528/rails_emoji/blob/master/rails_emoji-1.0.gem), then `$ gem install ./rails_emoji-1.0.gem --no-ri --no-rdoc`.

## Usage

```ruby
require 'rails_emoji'

":smile:".emoji_to_html
# output: "<img src="/assets/emojis/smile.png" width="20" height="20" title=":smile:" alt=":smile:" class="emoji" />"

RailsEmoji.render ":smile:", :host => "http://MrZhang.me", :size => 64, :class => "emoji-smile"
# output: "<img src="http://MrZhang.me/assets/emojis/smile.png" width="64" height="64" title=":smile:" alt=":smile:" class="emoji-smile" />"
```

## License

Licensed under the [MIT License](http://www.opensource.org/licenses/mit-license.php).
