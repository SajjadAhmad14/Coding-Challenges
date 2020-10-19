
def func(n)
  arr = [1, 2]
  sum = 0
  last_num = arr[-1]+arr[-2]
  while last_num + arr[-2]<=n do
    last_num = arr[-1]+arr[-2]
    arr.push(last_num)
  end
  arr.size.times do |i|
    if arr[i].even?
      sum += arr[i]
    end
  end
  sum
end
p func(20)
