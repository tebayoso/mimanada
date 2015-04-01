module MimosHelper
  def facebook_share_url(mimo)
    "https://www.facebook.com/sharer/sharer.php?u=http://mimanada.org/mimos/#{mimo.id}"
  end

  def twitter_share_url(mimo)
    "https://twitter.com/home?status=http://mimanada.org/mimos/#{mimo.id}"
  end

  def google_plus_share_url(mimo)
    "https://plus.google.com/share?url=http://mimanada.org/mimos/#{mimo.id}"
  end
end
