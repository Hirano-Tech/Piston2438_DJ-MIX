module ApplicationHelper
  def page_title(page_title = '')
    base_title = 'Hirano_Tech Streaming Player'

    page_title.empty? ? base_title : page_title + " | " + base_title
  end
end
