# Return all fibonacci numbers up to n 

def fib(n)
  fib = [0, 1]
  (0...n - 2).each do |_i|
    fib.push(fib[-1] + fib[-2]) if n > 1
  end
  fib
end

p fib(10)