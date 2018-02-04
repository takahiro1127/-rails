module HtmlBuilder
  
  def markup(tag_name = nil, options = {})
    root = nokogiri::HTML::DocumentFragment.parse('')
    Nokogiri::HTML::Builder.with(root) do |doc|
      if tag_name
        doc.send(tag_namem options) do
          yield(doc)
        end
      else
        yield(doc)
      end
    end
    root.to_html.html_safe
  end
end
