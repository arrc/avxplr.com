module CommentsHelper

  def comment_flag_path(flagable_type, comment)
    if flagable_type.kind_of? Shot
      flag_shot_comment_path(flagable_type, comment)
    else
      flag_aircraft_comment_path(flagable_type, comment)
    end
  end
end
