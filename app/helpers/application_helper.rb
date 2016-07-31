module ApplicationHelper
  def page_title(page_title_name)
    content_for(:title) { page_title_name }
  end
end
