class Notification

  attr_reader :content, :time_treshold
  
  def initialize(content, time_treshold, mood = :neutral)
    @content = content
    @time_treshold = time_treshold
    @mood = mood
  end

end
