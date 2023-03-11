def sorted_array_to_bst(nums)
  return nil if nums.length == 0
  return TreeNode.new(nums[0]) if nums.length == 1
  return TreeNode.new(nums[1], TreeNode.new(nums[0])) if nums.length == 2
  m = nums.length / 2
  return TreeNode.new(nums[m],
    sorted_array_to_bst(nums.slice(0...m)),
    sorted_array_to_bst(nums.slice(m + 1...nums.length))
  )
end
