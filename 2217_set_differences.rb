def find_difference(nums1, nums2)
  s = nums1.intersection nums2
  [(nums1 - s).uniq, (nums2 - s).uniq]
end
