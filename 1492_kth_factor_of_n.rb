# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def kth_factor(n, k)
  f = []
  m = Math.sqrt(n).to_i
  for i in 1..m
    f << i if (n % i) == 0
  end
  f_x = f.clone.reverse
  for i in f_x
    f << n / i
  end
  f.uniq!
  return (k > f.length) ? -1 : f[k - 1]
end
