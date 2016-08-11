module AircraftsHelper
  def x_links(klass)
    klass.map { |i| link_to i.strip, tag_path(i.strip) }.join(", ")
  end

  def comma_seperated(klass)
    klass.map { |i| i }.join(", ")
  end
end
