=begin
Sum of all positive integers up to n
This function return sum of positive number using recursion
=end

def sum(n)
  n > 0 ? n + sum(n-1) : 0
end
p sum(7)