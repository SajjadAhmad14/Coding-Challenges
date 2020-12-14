# frozen_string_literal: true

# ****** Min stack ALGORITHM ******
#  Given a series of numbers: 2, 3, 10, 1, 8, 4
#  Need to use two stacks called main stack and min stack.
#  One for containing all the elements: main
#  Other for only minimum element of main stack: min
#
#  ****PUSH*****
#  if main_stack is empty?
#   push number in main_stack and in min_stack
#  else
#   push value in main_stack
#   if head value of main_stack is less than that of min_stack
#     push value in min_stack
#   else
#     push value of head of min_stack in min_stack
#   end
#  end
#
#  ****POP*****
#  pop from main_stack
#  pop from min_stack
#

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
    @min_stack = MinStack.new
  end

  def push(number)
    if @list.head.nil?
      @list.prepend(number)
      @min_stack.push(number)
    else
      @list.prepend(number)
      if @list.head.value < @min_stack.list.head.value
        @min_stack.push(number)
      else
        @min_stack.push(@min_stack.list.head.value)
      end
    end
  end

  def pop
    @list.remove_from_front
    @min_stack.pop
  end

  def min
    @min_stack.list.head.value
  end
end

class MinStack
  attr_reader :list 
  def initialize
    @list = LinkedList.new
  end

  def push(number)
    @list.prepend(number)
  end

  def pop
    @list.remove_from_front
  end
end

stack = Stack.new
stack.push(8)
stack.push(2)
stack.push(0)
stack.push(10)
stack.pop
stack.pop
p stack.min
