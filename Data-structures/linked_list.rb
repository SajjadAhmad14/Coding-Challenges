# frozen_string_literal: true

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
      @size += 1
    end
  end

  # Remove node from the begining of list
  def remove_from_front
    if @head.nil?
      p 'List is empty!'
    else
      @head = @head.next_node
      @size -= 1
    end
  end

  def append(number)
    new_node = Node.new(number)
    if @head.nil?
      @head = new_node
      @tail = new_node
    else
      @tail.next_node = new_node
      @tail = new_node
    end
    @size += 1
  end

  def at(position)
    node = @head
    node_index = 0
    until node_index == position || node.next_node.nil?
      node = node.next_node
      node_index += 1
    end
    node.value
  end

  def add_at(position, value)
    new_node = Node.new(value)
    if position == 0
      new_node.next_node = @head
      @head = new_node
      return @head
    end
    node_index = 0
    until node_index == position || node.next_node.nil?
      node = node.next_node
      node_index += 1
    end
    node.value = value
  end
end
list = LinkedList.new
list.remove_from_front
p list.size
