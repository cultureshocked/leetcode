def construct_from_pre_post(preorder, postorder)
  return nil if preorder.length == 0
  return TreeNode.new(preorder[0]) if preorder.length == 1
  m = postorder.find_index(preorder[1])
  TreeNode.new(
    preorder.shift,
    construct_from_pre_post(preorder[0..m], postorder[0..m]),
    construct_from_pre_post(preorder[m + 1..-1], postorder[m + 1..-2])
  )
end
