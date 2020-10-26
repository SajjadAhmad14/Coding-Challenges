arr = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37,
       41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
find = 2

def binary(arr, n)
  min = 0
  max = arr.size - 1
  half = (min + max) / 2
  until n == arr[half]|| min == max
    n > arr[half] ? min = half + 1 : max = half - 1
    half = (min + max) / 2
  end
  arr[half] == n ? "Your number found at #{arr.index(arr[half])} index" : 'Number not found!'
end

p binary(arr, find)