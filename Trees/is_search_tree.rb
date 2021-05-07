class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

def array_to_tree(array, i)
  return nil if i >= array.length || array[i] == 0

  node = Node.new(array[i])
  node.left = array_to_tree(array, 2 * i + 1)
  node.right = array_to_tree(array, 2 * i + 2)

  node
end

def in_order(node)
  return '' if node.nil?

  result = in_order(node.left)
  result += "#{node.data} "
  result += in_order(node.right)
end

def search_tree?(arr)
  nodes = array_to_tree(arr, 0)
  str = in_order(nodes).split(' ')
  arr = str.map(&:to_i)
  n = arr.length
  return is_sorted?(arr, n)
end

def is_sorted?(arr, length)
  return true if length < 2
  if arr[length - 1] < arr[length - 2]
    return false
  end
  return is_sorted?(arr, length - 1)
end
arr = [10, 4, 12]   
p search_tree?(arr)