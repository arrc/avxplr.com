module CommentsHelper

  def comment_flag_path(flagable_type, comment)
    pp flagable_type
    pp comment
    if flagable_type.kind_of? Shot
      flag_shot_comment_path(flagable_type, comment)
    else
      flag_aircraft_comment_path(@aircraft, comment)
    end
  end
end
