module RailsEmoji
  class << self

    def render(*args)
      options = args.extract_options!.stringify_keys
      host = options['host']
      return if args[0].blank?

      if options.key? 'size'
        if options['size'] =~ %r{\A\d+x\d+\z}
          options['width'], options['height'] = options['size'].split('x')
        else
          options['width'] = options['height'] = options['size']
        end
      end

      options.slice! 'class', 'width', 'height', 'title', 'alt'
      options.reverse_merge! 'class' => 'emoji', 'width' => 20, 'height' => 20

      # replace emoji code to image tag
      args[0].gsub(/:([a-z0-9_+-]+):/) do |emoji|
        return emoji unless RailsEmoji::EMOJI.include? emoji[1..-2]

        attrs = options.reverse_merge(
          'src' => "#{host}/assets/emojis/#{emoji[1..-2]}.png",
          'alt' => emoji,
          'title' => emoji
        ).select{ |k, v| !v.blank? }.collect{ |k, v| %(#{k}="#{v}") }

        %(<img #{attrs * ' '} />)
      end
    end

  end
end

# extend to String class
class String

  def emojify
    RailsEmoji.render(self)
  end

end
