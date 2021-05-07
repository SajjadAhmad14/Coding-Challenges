class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end  
end

def arr_to_tree(arr, i)
  return nil if i >= arr.length || arr[i] == 0

  node = Node.new(arr[i])
  node.left = arr_to_tree(arr, 2*i+1)
  node.right = arr_to_tree(arr, 2*i+2)
  
  node
end

def binary_tree_height(arr)
  node = arr_to_tree(arr, 0);
  height(node)
end

def height(node)
  return 0 if node.nil?
  left = height(node.left)
  right = height(node.right)
  max_height = max(left, right);
  height = max_height + 1
end

def max(a, b)
  a > b ? a : b
end
arr = [2, 7, 5, 2, 6, 0, 9]
p binary_tree_height(arr)