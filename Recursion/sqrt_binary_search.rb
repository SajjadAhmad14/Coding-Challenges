def sqrt(number)
  sqrt_recursive(number, 0, number)
end

def sqrt_recursive(number, min, max)
  arr = (min..max).to_a
  middle = 0 + arr.length / 2
  sqrt = arr[middle] * arr[middle]
  return middle if number == sqrt
  return -1 if min >= max
  if (number > sqrt)
    sqrt_recursive(number, middle + 1, max)
  else
    sqrt_recursive(number, min, max - 1)
  end
   
end
