def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, n = 2)
  a = []
  n.times { a << input }
  a.join(' ').strip
end

def start_of_word(input, n)
  input[0...n]
end

def first_word(input)
  input.split(' ').first
end

def titleize(input)
  input.capitalize!
  input.split(' ').map { |w| LIST.include?(w) ? w : w.capitalize }.join(' ')
end

LIST = %w[a and it the over].freeze
