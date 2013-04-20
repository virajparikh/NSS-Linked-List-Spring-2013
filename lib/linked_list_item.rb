class LinkedListItem
  attr_reader :next_list_item  
  # lli1.next_list_item from test
  # same as:
  # def next_list_item
  #   return @next_list_item
  # end
  attr_reader :payload

  def initialize( payload )
  	@payload = payload
  end

  def next_list_item= (linked_list_item)
	   if linked_list_item == self
  	 	raise ArgumentError
     else 
  	  @next_list_item = linked_list_item  	
    end
  end

  def last?
  	@next_list_item.nil?  # or next_list_item.nil? (this works because of attr_reader :next_list_item)
    # also could use:
    # if next_list_item.nil?
    #   return true (or just "true")
    # else
    #   false

  end
end
