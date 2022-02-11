require "./break"

class Long < Break
  def initialize
    super(type: :long)
  end
end

Long.new.run