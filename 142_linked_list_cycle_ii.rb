class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end


def detectCycle(head)
  s, f = head, head
  until f == nil
    break if f.next == nil
    f = f.next.next
    s = s.next
    if f == s
      st = head
      counter = 0
      until st == s
        s = s.next
        st = st.next
        counter += 1
      end
      return counter
    end
  end
  -1
end
