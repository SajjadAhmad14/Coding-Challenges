class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
    @value = value
    @next_node = next_node
  end
end

class LinkedList
  attr_reader :size, :head, :tail
  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  # Add a node in the begining of list
  def prepend(number)
    node = Node.new(number)
    if @head.nil?
      @head = node
      @tail = node
    else
      node.next_node = @head
      @head = node
    end
    @size += 1
  end

  # Remove node from the begining of list
  def remove_from_front
    @head = @head.next_node
    @size -= 1
  end
end

class Stack
  attr_reader :list
  def initialize
    @list = LinkedList.new
  end

  def push(number)
    @list.prepend(number)
  end

  def pop
    value = @list.head.value
    @list.remove_from_front
    value
  end

end

class MinStack
  attr_reader :list, :stack, :min_value, :stack_size
  def initialize
    @list = LinkedList.new
    @stack = Stack.new
    @min_value = 0
    @stack_size = 0
  end

  def min_push(number)
    @stack.push(number)
    if @list.size == 0
      @list.prepend(number)
      @min_value = @list.head.value
      @stack_size += 1
    end
    if @stack.list.head.value <= @list.head.value
      @list.prepend(number)
      @min_value = @list.head.value
      @stack_size += 1
    end
  end

  def min_pop
    if @list.head.value == @stack.list.head.value
      @stack.pop
      @list.remove_from_front
      @min_value = @list.head.value
      @stack_size -= 1
    else
      @stack.pop
    end
  end

  def check
    @stack.list.head.value
  end
end


min_stack = MinStack.new
min_stack.min_push(3)
min_stack.min_push(5)
min_stack.min_push(2)
min_stack.min_pop