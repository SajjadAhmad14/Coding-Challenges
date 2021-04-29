def fact(n)
  return 1 if n == 0
  if (n > 0)
   n * fact(n-1)
  else
    return 'Please check for positive number!'
  end
end

p fact(1)