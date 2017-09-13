def hello(greeting = 'Hello!')
  greeting
end

def greet(name)
  hello('Hello, ') + name + '!'
end
