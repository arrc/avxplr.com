module AircraftsHelper
  def x_links(klass)
    klass.map { |role| link_to role.strip, tag_path(role.strip) }.join(", ")
  end
end
