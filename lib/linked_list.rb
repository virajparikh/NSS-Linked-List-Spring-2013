require 'linked_list_item'

class LinkedList
  attr_reader :first_item

  def initialize *args
  end

  def add_item(payload)
    item = LinkedListItem.new(payload)

    if @first_item.nil?
      @first_item = item
    else
      final_item = @first_item
      until final_item.last?
        final_item = final_item.next_list_item
    end

    final_item.next_list_item = item #makes the connection to the next item
    end
  end

  def get(n)
    item = @first_item
    
    n.times do 
      raise IndexError if item.nil?
      item = item.next_list_item
    end
    
    item.payload
  end

  def last
    item = @first_item
    return nil if item.nil?

    until item.last?
      item = item.next_list_item
    end
    
    item.payload
  end

  def size
    size = 0
    item = @first_item
    
    until item.nil?
      item = item.next_list_item
      size += 1
    end

    size
  end

  def to_s
    current_item = @first_item
    payloads = ""

    while current_item do
      payloads += " "
      payloads += current_item.payload
      payloads += "," unless current_item.last?
      current_item = current_item.next_list_item
    end

    "|#{payloads} |"
  end

  # ========= Bonus ========== #

  def [](payload)
  end

  def []=(n, payload)
  end

  def remove(n)
  end

end
