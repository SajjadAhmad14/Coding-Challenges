# Return all fibonacci numbers up to n 

def fib(n)
  if n < 3
    return 1
  else
    return fib(n-1) + fib(n -2)
  end
end

fib(4)