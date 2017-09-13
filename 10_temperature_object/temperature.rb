class Temperature
  def initialize(opt = Hash.new)
    @opt = opt
  end

  def in_fahrenheit
    @opt.key?(:c) ? ctof(@opt[:c]) : @opt[:f] 
  end

  def in_celsius
    @opt.key?(:f) ? ftoc(@opt[:f]) : @opt[:c] 
  end

  def self.from_celsius(temp)
    Temperature.new(c: temp)
  end

  def self.from_fahrenheit(temp)
    Temperature.new(f: temp)
  end

  private

  def ftoc(fahrenheit)
    (fahrenheit.to_f - 32.0) * (5.0 / 9.0)
  end
  
  def ctof(celsius)
    celsius.to_f * (9.0 / 5.0) + 32.0
  end
end

class Celsius < Temperature
  def initialize(temp)
    @opt = {c: temp}
  end
end

class Fahrenheit < Temperature
  def initialize(temp)
    @opt = {f: temp}
  end
end