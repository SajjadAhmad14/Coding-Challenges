def binary_tree_height(arr)
  left_height = 0;
  right_height = 0;
  count = 0;
  while left_height < arr.length && right_height < arr.length
    left_height = 2 * left_height + 1
    right_height = 2 * right_height + 2
    count += 1
  end
  count
end

p binary_tree_height([2, 7, 5, 2, 6, 0, 9])
