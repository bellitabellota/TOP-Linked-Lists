class LinkedList
  attr_accessor :size, :head, :tail

  def initialize
    @head = nil
    @tail = nil
    @size = 0
  end

  def to_s
    current_node = head
    current_list_to_print = "" 
    i = 0

    until i == size
      current_list_to_print += "( #{current_node.value} ) -> "
      current_node = current_node.next_node
      i += 1
    end
    current_list_to_print += "nil"
    current_list_to_print
  end

  def find(node_value) ###
    current_node = head
    i = 0

    until i == size do
      i += 1
      if current_node.value == node_value
        return i
      else
        current_node = current_node.next_node
      end
    end
    return nil
  end

  def contains?(node_value)
    value_is_contained = false
    current_node = head
    i = 0

    until i == size do
      if current_node.value == node_value
        return value_is_contained = true
      else
        current_node = current_node.next_node
        i += 1
      end
    end
    
    value_is_contained
  end

  def at(index)
    node_at_index = head
    i = 1

    until i == index do 
      node_at_index = node_at_index.next_node
      i += 1
    end

    node_at_index
  end

  def pop
    if tail.nil?
      puts "Cannot remove a node from an emtpy list"
    else
      item_to_remove = self.at(size)
      self.at(size - 1).next_node = nil
      self.tail = self.at(size - 1)
      self.size -= 1

      item_to_remove
    end
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

# puts linked_list.size

# puts linked_list.head

# puts linked_list.tail

p linked_list

# puts linked_list.at(1)
# puts linked_list.at(2)
# puts linked_list.at(3)


# linked_list.pop

# linked_list

# p linked_list.contains?("007")
# p linked_list.contains?("Augustin")
# p linked_list.contains?("Bernd")
# linked_list.pop
# p linked_list.contains?("Bernd")

# p linked_list.find("007")
# p linked_list.find("Augustin")
# p linked_list.find("Bernd")
# p linked_list.find("Anna")

puts linked_list.to_s