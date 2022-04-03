class Interruption

  attr_reader :label, :tag, :dialog

  def initialize(label, tag, dialog)
    @label = label
    @tag = tag
    @dialog = dialog
  end

end
