def reverser
  yield.split(' ').map(&:reverse).join(' ')
end

def adder(n = 1)
  yield + n
end

def repeater(n = 1)
  n.times { yield }
end
