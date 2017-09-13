def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(array)
  array.inject(0) { |sum, element| sum + element }
end

def multiply(*array)
  array.inject { |sum, element| sum * element }
end

def power(a, b)
  a**b
end

def factorial(n)
  n = 1 if n.zero?
  raise ArgumentError.new('Negative numbers have no factorial') if n < 0
  n.downto(1).inject { |sum, element| sum * element }
end
