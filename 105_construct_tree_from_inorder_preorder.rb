def build_tree(preorder, inorder)
  return nil if inorder.length == 0
  return TreeNode.new(inorder[0]) if inorder.length == 1

  m = inorder.find_index(preorder[0])
  l_i = inorder.slice(0...m)
  r_i = inorder.slice(m+1...inorder.length)
  l_p = preorder.slice(1...l_i.length + 1)
  r_p = preorder.slice(l_i.length + 1 .. -1)

  return TreeNode.new(
    preorder[0],
    build_tree(l_p, l_i),
    build_tree(r_p, r_i)
  )
end
