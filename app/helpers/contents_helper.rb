module ContentsHelper
  def content_time(time)
    time < 6.days.ago ? l(time) : time_ago_in_words(time)
  end
end
