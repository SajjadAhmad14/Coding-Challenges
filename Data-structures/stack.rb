require_relative './linked_list'

class Stack
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  def push(number)
    @list.prepend(number)
  end

  def pop
    if @list.head.nil?
      p 'List is already empty!'
    else
      value = @list.head.value
      @list.remove_from_front
    end
    value
  end

  def is_empty
    if @list.head.nil?
      p 'List is empty!'
    end
  end
end

stack = Stack.new
stack.push(2)
stack.push(1)
stack.push(5)
stack.push(6)
p stack.pop
p stack.pop