# Jekyll Lightbox Plugin
#
# Bart Vandeweerdt | www.appfoundry.be
#
# Example usage: {% lightbox images/appfoundry.png --data="some data" --title="some title" --alt="some alt" --img_style="css styling" %}
module Jekyll
  class LightboxTag < Liquid::Tag

    def initialize(tag_name, text, token)
      super

      # The path to our image
      @path = text.split(/\s+/)[0].strip

      # Defaults
      @title = ''
      @alt = ''
      @img_style = ''
      @data = ''

      # Parse Options
      if text =~ /--title="([^"]*)"/i
        @title = text.match(/--title="([^"]*)"/i)[1]
      end
      if text =~ /--alt="([^"]*)"/i
        @alt = text.match(/--alt="([^"]*)"/i)[1]
      end
      if text =~ /--img-style="([^"]*)"/i
        @img_style = text.match(/--img-style="([^"]*)"/i)[1]
      end
      if text =~ /--data="([^"]*)"/i
        @data = text.match(/--data="([^"]*)"/i)[1]
      end

    end

    def render(context)
      url = context.registers[:page]["url"]
      relative = "../" * (url.split("/").length-1)
      src = File.join(relative, @path == nil ? '' : @path);
      %{<a href="#{src}" data-lightbox="#{@data}" data-title="#{@title}"><img src="#{src}" alt="#{@alt || @title}" style="#{@img_style}"/></a>}
    end
  end
end

Liquid::Template.register_tag('lightbox', Jekyll::LightboxTag)
