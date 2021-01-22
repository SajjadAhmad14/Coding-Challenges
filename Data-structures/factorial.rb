=begin
Factorial of a positive integer is product of all the numbers
less than or equal to itself

This function return factorial of positive number without using recursion
=end

def fact(n)
  (1..n).inject(1){|product, number| product * number}
end

p fact(5)
