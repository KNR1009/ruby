require "./break"

class Short < Break
  def initialize
    super(type: :short)
  end
end

Short.new.run