require 'linked_list_item'

class LinkedList
  attr_reader :first_item

  def initialize *args
    args.each do |arg|
      add_item(arg)
    end
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

    final_item.next_list_item = item
    end
  end

  def get_item(n)  #Eliza's code
    item = @first_item
    n.times do
      raise IndexError if item.nil?
      item = item.next_list_item
    end
    item
  end

  def get(n)  #Eliza's code
    get_item(n).payload
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

  def [](n)
    get(n)
  end

  def []=(n, payload)
    prev = get_item(n-1)
    oldnext = prev.next_list_item
    newnext = LinkedListItem.new(payload)
    prev.next_list_item = newnext
    newnext.next_list_item = oldnext.next_list_item
  end

  def remove(n)
    if n >= size
      raise IndexError, "cannot remove node at position #{n}, as it does not exist"
    end
    if n == 0
      @first_item = @first_item.next_list_item
    else
      before = get_item(n-1)
      node = get_item(n)
      before.next_list_item = node.next_list_item
    end
  end

  # ====== End of Bonus ====+==== #
  # the following commented code is Viraj's original def indexOf
  # def indexOf(payload)  
  #   return nil if @first_item.nil?
  #   index = 0
  #   item = @first_item
  #   until item.payload == payload 
  #     item = item.next_list_item
  #     index += 1
  #     return nil if item.nil?
  #   end
  #   index
  # end

  def indexOf(payload)
    item = @first_item
    index = 0
    while item
      if item.payload == payload
        return index
      end
    item = item.next_list_item
    index += 1
    end
  end

  # ========= Sorting Exercise ========== 

  def sorted?
    return true if @first_item.nil? || size == 1
    current_item = @first_item
    (size - 1).times do 
      return false if current_item > current_item.next_list_item
      current_item = current_item.next_list_item 
    end
    true
  end

  def sort
  end

  # This is a helper I implemented
  def swap_with_next i
  end

end
