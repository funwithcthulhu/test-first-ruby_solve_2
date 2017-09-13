class Integer
  def pad
    self.to_s.length < 2 ? "0#{self.to_s}" : self.to_s    
  end
end

class Timer
  attr_accessor :seconds
  attr_accessor :minutes
  attr_accessor :hours

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    round
    display
  end

  def display
    "#{@hours.pad}:#{@minutes.pad}:#{@seconds.pad}"
  end

  def round
    @minutes = @seconds / 60
    @seconds %= 60
    @hours = @minutes / 60
    @minutes %= 60
  end
end
