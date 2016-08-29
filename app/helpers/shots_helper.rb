module ShotsHelper
  def tag_links(tags)
    tags.split(",").map { |tag| link_to tag.strip, tag_path(tag.strip) }.join(", ")
  end

  def tag_cloud(tags, classes)
    max = tags.sort_by(&:count).last
    tags.each do |tag|
      index = tag.count.to_f / max.count * (classes.size-1)
      yield(tag, classes[index.round])
    end
  end

  def video_embed(video_url)
    video_id = video_url.split("=").last
    content_tag(:iframe, nil, width:"100%", height:"400", frameborder: 0, allowFullScreen: true, src: "http://www.youtube.com/embed/#{video_id}")
  end
end
