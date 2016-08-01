module Admin::FlagsHelper
  def shot_or_comment_path(flag)
    flagable = flag.flagable
    if flagable.kind_of? Comment
      comment_path(flagable)
    else
      shot_path(flagable)
    end
  end

  def flaged_by_user(flag)
    flag.user.username
  end

  def flaged_user(flag)
    flag.flagable.user.username if flag.flagable.user.present?
  end
end
