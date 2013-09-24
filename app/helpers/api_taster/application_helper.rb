require 'kramdown'

module ApiTaster
  module ApplicationHelper
    def markdown(text)
      markdown_renderer ||= Kramdown::Document.new(text).to_html
    end
  end
end
