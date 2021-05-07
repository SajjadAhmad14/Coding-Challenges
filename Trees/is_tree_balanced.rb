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

def balanced_tree?(array)
  root = arr_to_tree(array, 0)
  is_balanced?(root)
end

def is_balanced?(root)
  return true if root.nil?
  lef_height = height(root.left)
  right_height = height(root.right)
  if (lef_height - right_height).abs <= 1 && is_balanced?(root.left) && is_balanced?(root.right)
     true
  else
    false
  end
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

puts balanced_tree?([1, 2, 0, 3, 4, 0, 0])
# => false

puts balanced_tree?([1, 2, 3, 4, 5, 6, 7])
# => true