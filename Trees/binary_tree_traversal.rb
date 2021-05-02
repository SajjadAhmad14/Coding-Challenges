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
  node.left = array_to_tree(array, 2*i+1)
  node.right = array_to_tree(array, 2*i+2)
  
  node
end

arr = [10, 1, 2, 3, 4, 5, 6]
nodes = array_to_tree(arr, 0)

def post_order(node)
  if node == nil
    return ''
  end
  result = post_order(node.left)
  result += post_order(node.right)
  result += "#{node.data} "
end

p post_order(nodes)