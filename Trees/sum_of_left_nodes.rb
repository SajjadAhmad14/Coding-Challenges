def leftmost_nodes_sum(array)
  sum = array[0]
  index = 0
  for i in 0..array.length-1
    index = (2 * index) + 1
    break if array[index] == nil
    sum += array[index]
  end
  sum
end

puts leftmost_nodes_sum([1, 2, 3, 4, 5, 6, 7])
