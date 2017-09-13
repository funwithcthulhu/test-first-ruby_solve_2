def measure(n = 1)
  avg = []
  n.times do
    start = Time.now
    yield
    fin = Time.now
    avg << fin - start
  end
  avg.inject(:+) / n
end
