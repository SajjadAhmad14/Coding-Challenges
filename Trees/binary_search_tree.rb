class Node
  attr_reader :data
  attr_accessor :left, :right

  def initialize(data)
    @data = data
  end
end

class BST
  attr_reader :root
  def insert(node)
    parent = nil 
    current = @root
    until current.nil?
      parent = current
      if node.data <= current.data
        current = current.left
      else 
        current = current.right
      end
    end
    if parent.nil?
      @root = node
    elsif node.data <= parent.data
      parent.left = node
    elsif
      parent.right = node
    end
  end

  def pre_order(node = @root)
    if node == nil
      return ''
    end
    result = "#{node.data} "
    result += pre_order(node.left)
    result += pre_order(node.right)
  end
end


def binary_search_tree(array)
  tree = BST.new
  array.each { |e| tree.insert(Node.new(e)) }
  tree.pre_order
end

puts binary_search_tree([8, 3, 10, 1, 6, 14, 4, 7, 13])
# => "8 3 1 6 4 7 10 14 13"
