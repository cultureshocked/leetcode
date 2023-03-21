def zero_filled_subarray(nums)
  arr = 0
  streak = 0
  for n in nums
    if n != 0 and streak > 0
      arr += (1..streak).sum
      streak = 0
    elsif n == 0
      streak += 1
    end
  end
  arr += (1..streak).sum
end
