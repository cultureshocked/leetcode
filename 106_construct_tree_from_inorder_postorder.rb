def build_tree(inorder, postorder)
  return nil if inorder.length == 0
  return TreeNode.new(inorder[0]) if inorder.length == 1
  m = inorder.find_index(postorder[-1])
  l_i = inorder.slice(0...m)
  r_i = inorder.slice(m+1...inorder.length)
  l_p = postorder.slice(0...l_i.length)
  r_p = postorder.slice(l_i.length..-2)

  return TreeNode.new(postorder[-1], build_tree(l_i, l_p), build_tree(r_i, r_p))
end
