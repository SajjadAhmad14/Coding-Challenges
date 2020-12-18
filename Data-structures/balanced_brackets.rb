=begin

***** ALgorithm for balanced bracket using stack *****
loop through every char of str
  if char is '(' or '[' or '{'
    push(char)
  elsif char is ')' or ']' or '}'
    if list is empty? or top != char
      return false
    else
      pop
    end
  end
end
if list is empty? 
  true
else
  false
end

=end

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
  attr_accessor :list
  def initialize
    @list = LinkedList.new
  end

  def push(char)
    @list.prepend(char)
  end

  def pop
    if @list.head.nil?
      p 'List is already empty!'
    else
      @list.remove_from_front
    end
  end

  def is_empty?
    if @list.head.nil?
      return true
    else
      false
    end
  end

  def balanced_brackets?(str)
    str.each_char do |i|
      
      if str[i] == '(' || str[i] == '[' || str[i] == '{'
        push(str[i])
      elsif str[i] == ')' || str[i] == ']' || str[i] == '}'
        top = @list.head.value
        if is_empty? || (top != '(' && str[i] == ')' || top != '[' && str[i] == ']' || top != '{' && str[i] == '}')
          return false
        else
          pop
        end
      end
    end
    if is_empty?
      true
    else
      false
    end
  end
end
stack = Stack.new
p stack.balanced_brackets?('[({}{}{})([])]')