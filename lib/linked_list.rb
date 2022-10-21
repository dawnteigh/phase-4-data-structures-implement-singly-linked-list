require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def prepend(node)
    if head.nil?
      self.head = node
    else
      node.next_node = head
      self.head = node
    end
  end

  def append(node)
    if head.nil?
      self.head = node
      return
    end
    last_node = head
    while last_node.next_node
      last_node = last_node.next_node
    end
    last_node.next_node = node
  end

  def delete_head
    if head
      self.head = head.next_node
    end
  end

  def delete_tail
    if head
      if head.next_node.nil?
        self.head = nil
      return
      end
      last_node = head
      until last_node.next_node.next_node.nil?
        last_node = last_node.next_node
      end
      last_node.next_node = nil
    end
  end

  def add_after(index, node)
    last_node = head
    index.times do
      last_node = last_node.next_node
    end
    last_node.next_node = node
  end

  def search(v)
    last_node = head
    until last_node.data == v
      last_node = last_node.next_node
    end
    last_node
  end


end
