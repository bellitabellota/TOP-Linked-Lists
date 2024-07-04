class LinkedList
  attr_accessor :size, :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def prepend(value) # adds a new node to the start of the list
    if self.head.nil?
      self.head = value
      self.tail = value
    else
      value.next_node = head
      self.head = value
    end
    self.size += 1
  end

  def append(value) # adds a new node to the end of the list
    if self.head.nil?
      self.head = value
      self.tail = value
    else
      self.tail.next_node = value
      self.tail = value
    end
    self.size += 1
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize(value)
    @value = value
    @next_node = nil  
  end
end

linked_list = LinkedList.new

linked_list.prepend(Node.new("Augustin"))


linked_list.prepend(Node.new("007"))


linked_list.append(Node.new("Bernd"))

puts linked_list.size

puts linked_list.head

puts linked_list.tail

p linked_list