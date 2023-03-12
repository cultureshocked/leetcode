class ListNode
  attr_accessor :val, :next
  def initialize(val = 0, _next = nil)
    @val = val
    @next = _next
  end
end

def list_from_arr(arr)
  h = ListNode.new(arr[0])
  t = h
  for n in (1...arr.length)
    t.next = ListNode.new(arr[n])
    t = t.next
  end
  h
end

def print_list(list)
  until list.nil?
    print "#{list.val}->"
    list = list.next
  end
  print "\n"
end

def merge_k_lists(lists)
  lists.delete(nil)
  return nil if lists.empty?
  return lists[0] if lists.length == 1

  mid = (lists.length.to_f / 2).ceil
  left = merge_k_lists(lists[0...mid])
  right = merge_k_lists(lists[mid...lists.length])

  return merge([left, right])
end

def merge(lists)
  l_one = lists[0]
  l_two = lists[1]
  h = ListNode.new
  l = h
  until l_one.nil? or l_two.nil?
    if l_one.val < l_two.val
      l.next = ListNode.new(l_one.val)
      l = l.next
      l_one = l_one.next
    else
      l.next = ListNode.new(l_two.val)
      l = l.next
      l_two = l_two.next
    end
  end
  r = (l_one.nil?) ? l_two : l_one
  until r.nil?
    l.next = ListNode.new(r.val)
    l = l.next
    r = r.next
  end
  h.next
end
