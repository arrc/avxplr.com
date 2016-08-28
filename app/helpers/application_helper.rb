module ApplicationHelper
  def page_title(page_title_name)
    content_for(:title) { page_title_name }
  end

  def subnav_path(obj)
    if controller.controller_name == "aircrafts"
      aircrafts_path(obj)
    else
      shots_path(obj)
    end
  end
end
