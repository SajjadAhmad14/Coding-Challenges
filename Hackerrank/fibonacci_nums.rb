# frozen_string_literal: true

def func(n)
  arr = [1, 2]
  sum = 2
  last_num = arr[-1] + arr[-2]
  while last_num + arr[-2] <= n
    last_num = arr[-1] + arr[-2]
    arr.push(last_num)
    sum += last_num if last_num.even?
  end
  sum
end
p func(10)
