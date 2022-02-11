require "./timer_base"

class Pomodoro < TimerBase
  def initialize(minutes: 25)
    super
  end
end

timer = Pomodoro.new
timer.run