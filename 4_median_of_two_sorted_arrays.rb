def find_median_sorted_arrays(nums1, nums2)
  n = nums1.length
  m = nums2.length

  return nil if n == 0 and m == 0

  i, j = 0, 0
  mgd = []
  until nums1.empty? or nums2.empty? do
    if nums1[0] > nums2[0]
      mgd << nums2.shift
    else
      mgd << nums1.shift
    end
  end

  if nums1.empty?
    mgd.concat nums2
  else
    mgd.concat nums1
  end

  return (mgd.length % 2 == 1) ? mgd[mgd.length / 2] : ((mgd[(mgd.length / 2) - 1] + mgd[mgd.length / 2]).to_f / 2)
end
