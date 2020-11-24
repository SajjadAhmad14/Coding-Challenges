require_relative './linked_list'

class Queue
  attr_reader :list 
  def initialize
    @list = LinkedList.new
  end
  def add(number)
    @list.append(number)
  end
  
  def remove
    if @list.head.nil?
      p 'List is already empty!'
      return -1
    else
      value = @list.head.value
      @list.remove_from_front
    end
    value
  end
end
queue = Queue.new
queue.add(3)
queue.add(5)
p queue.remove
