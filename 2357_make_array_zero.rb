def minimum_operations(nums)
  c = 0
  l = nums.length
  until nums.all? { |num| num == 0 } do
    m = nums.filter {|num| num > 0 } .min
    nums = nums.map { |num| (num > 0) ? num - m : num }
    c += 1
  end
  c
end
