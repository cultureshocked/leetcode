def sum_numbers(root)
  sum_with_n(root, 0)
end

def sum_with_n(root, n)
  return 0 if root.nil?
  c = n * 10 + root.val
  return c if root.left.nil? and root.right.nil?
  return sum_with_n(root.left, c) + sum_with_n(root.right, c)
end
