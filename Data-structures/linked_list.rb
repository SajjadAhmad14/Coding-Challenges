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
    end
    @size += 1
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

  # Return a node from the front
  def return_front_node
    if @head.nil?
      p 'List is empty!'
    else
      @head.value
    end
  end

  # Add a node at the end of the list
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

  # Remove a node from the last of list
  def remove_from_end
    if @head.nil?
      p 'List is empty!'
    elsif @head == @tail
      @head = nil
      @tail = nil
      @size -= 1
    else
      node = @head
      node = node.next_node until node.next_node.next_node.nil?
      node.next_node = nil
      @tail = node
      @size -= 1
    end
  end

  # Return a node value from the end of list
  def return_last_node
    if @head.nil?
      p 'List id empty!'
    else
      @tail.value
    end
  end

  # Return a value from the index given
  def at_index(position)
    if @head.nil?
      p 'List is empty!'
    else
      node = @head
      node_index = 0
      until node_index == position || node.next_node.nil?
        node = node.next_node
        node_index += 1
      end
      node
    end
  end

  # Add a node after the given position
  def add_after(position, value)
    new_node = Node.new(value)
    node = at_index(position)
    if @head.nil?
      @head = new_node
      @tail = new_node
    elsif @tail == node
      @tail.next_node = new_node
      @tail = new_node
    else
      node.next_node = new_node
      new_node.next_node = node.next_node
    end
    @size += 1
  end

  # Add a node at the given position
  def add_at(position, value)
    new_node = Node.new(value)
    node = at_index(position)
    if @head.nil?
      @head = new_node
      @tail = new_node
    elsif node == @head
      new_node.next_node = @head
      @head = new_node
    else
      temp_node = @head
      index = 0
      while index != position - 1
        temp_node = temp_node.next_node
        index += 1
      end
      new_node.next_node = temp_node.next_node
      temp_node.next_node = new_node
    end
    @size += 1
  end

  # Remove a node from the given position
  def remove(position)
    node_to_remove = at_index(position)
    if @head.nil?
      p 'List is already empty!'
    elsif @head == @tail
      @head = nil
      @tail = nil
    elsif node_to_remove == @head
      @head = @head.next_node
    elsif @head != @tail && @tail == node_to_remove
      node = @head
      node = node.next_node until node.next_node.next_node.nil?
      node.next_node = nil
      @tail = node
    else
      node = @head
      index = 0
      while index != position - 1
        node = node.next_node
        index += 1
      end
      node.next_node = node_to_remove.next_node
      node_to_remove.next_node = nil
    end
    @size -= 1
  end
end
list = LinkedList.new
list.remove(0)