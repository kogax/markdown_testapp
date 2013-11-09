# encoding: utf-8

module ApplicationHelper
  # Markdown
  class SyntaxHighlight < Redcarpet::Render::HTML
    def block_code(code, language)
      CodeRay.scan(code, language).div(line_numbers: :inline, line_number_anchors: false, span: :div)
    end
  end

  def markdown(content)
    @markdown ||= Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true, fenced_code_blocks: true)
    @markdown.render(content)
  end
end
