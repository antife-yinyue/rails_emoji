module RailsEmoji
  class << self

    def render(text, *args)
      options = args.extract_options!

      host = options[:host] || ""
      size = options[:size] || 20
      class_name = options[:class] || "emoji"

      # Replace
      text.gsub(/:([^:]+):/) do |emoji|
        emoji_code = emoji
        emoji = emoji_code.gsub(":", "")

        %{<img src="#{ host }/assets/emojis/#{ emoji.gsub('+', 'plus') }.png" } +
          %{width="#{ size }" height="#{ size }" } +
          %{title="#{ emoji_code }" alt="#{ emoji_code }" class="#{ class_name }" />}
      end
    end

  end
end

# extend to String class
class String

  def emoji_to_html
    RailsEmoji.render(self)
  end

end
