require 'linked_list_item'

class LinkedList
  attr_reader :first_item
  #def first_item
  #   return @first_item
  # end

  def initialize *args
  end

  def add_item(payload)
    next_item = LinkedListItem.new(payload)

    if @first_item.nil?
      @first_item = next_item
    else
      final_item = @first_item
      while !final_item.last? #
        final_item = final_item.next_list_item
      end

    final_item.next_list_item = next_item #makes the connection to the next item
    end
  end

  def get(n)
    i = 0
    item = @first_item
    
    if item.nil?
      raise IndexError
    else
      while i < n
        item = item.next_list_item
        i += 1
      end
    end 
    
    item.payload
  end

  def last
  end

  def size
  end

  def to_s
  end

  # ========= Bonus ========== #

  def [](payload)
  end

  def []=(n, payload)
  end

  def remove(n)
  end

end
