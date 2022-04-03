class Message
  
  attr_reader :content, :character, :speed, :duration

  def initialize(content, character = nil, mood = nil, anger_values = {}, speed = 1, duration = -1, target = nil)
    @anger_values = {crowd: 0, grooms:0, priest: 0}.update(anger_values)
    @content = content
    @@mood = @mood = mood || @@mood || :neutral
    @@character = @character = character || @@character
    @speed = speed
    @duration = duration
    @target = target
  end

  # TODO def get_path

end
