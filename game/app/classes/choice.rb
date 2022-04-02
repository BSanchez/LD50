class Choice

  attr_reader :label, :target, :mood

  def initialize(label, target, mood = :neutral) 
    @label = label
    @target = target
    @mood = mood
  end

end
