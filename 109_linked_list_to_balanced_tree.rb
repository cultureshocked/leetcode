def sorted_list_to_bst(head)
  count = 0;
  ptr = head
  while ptr
    ptr = ptr.next
    count += 1
  end

  return list_to_bst_size(head, count)
end

def list_to_bst_size(list, size)

  return TreeNode.new(list.val) if size == 1
  return TreeNode.new(list.val, nil, TreeNode.new(list.next.val)) if size == 2
  return nil if size == 0

  midpoint = size / 2

  left = list_to_bst_size(list, midpoint)

  (midpoint).times do
    list = list.next
  end

  ret_node = TreeNode.new(list.val, left)
  list = list.next
  ret_node.right = list_to_bst_size(list, size - midpoint - 1)

  return ret_node
end
