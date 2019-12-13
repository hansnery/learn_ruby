class Timer
  attr_accessor :hours, :minutes, :seconds

  def initialize
    @hours = 0
    @minutes = 0
    @seconds = 0
  end

  def time_string
    while seconds > 59
      @seconds -= 60
      @minutes += 1
    end
    while minutes > 59
      @minutes -= 60
      @hours += 1
    end
    sprintf("%02d:%02d:%02d", @hours, @minutes, @seconds)
  end
end
