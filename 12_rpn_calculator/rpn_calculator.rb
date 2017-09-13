class RPNCalculator
  attr_accessor :stack
  def initialize(stack = [])
    @stack = stack
  end

  def push(nums)
    @stack.push nums
  end

  def value
    @stack.last
  end
  
  def plus
    raise 'calculator is empty' if @stack.count < 2
    first = @stack.pop
    second = @stack.pop
    added = first + second
    @stack.push(added)
  end

  def minus
    raise 'calculator is empty' if @stack.count < 2
    first = @stack.pop
    second = @stack.pop
    subtracted = second - first
    @stack.push(subtracted)
  end

  def divide
    raise 'calculator is empty' if @stack.count < 2
    first = @stack.pop
    second = @stack.pop
    divided = second.to_f / first.to_f 
    @stack.push(divided)
  end

  def times
    raise 'calculator is empty' if @stack.count < 2
    first = @stack.pop
    second = @stack.pop
    multiplied = first.to_f * second.to_f
    @stack.push(multiplied)
  end

  def tokens(string)
    string.split(' ').each do |value|
      case value
      when '*' then @stack.push(:*)
      when '/' then @stack.push(:/)
      when '+' then @stack.push(:+)
      when '-' then @stack.push(:-)
      else @stack.push(value.to_i)
      end
    end
    @stack
  end

  def evaluate(string)
    @stack = []
    string.split(' ').each do |value|
      case value
      when '*' then times
      when '/' then divide
      when '+' then plus
      when '-' then minus
      else @stack.push(value.to_i)
      end
    end
    string.include?('/') ? @stack.join.to_f : @stack.join.to_i
  end
end
