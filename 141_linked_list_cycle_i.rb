class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

#Hashmap version
#See 142: Linked List Cycle II for tortoise/hare traversal
def hasCycle(head)
  hm = Hash.new
  until head == nil
    return true if hm[head]
    hm[head] = 1
    head = head.next
  end
  false
end
