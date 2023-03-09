def is_happy(n)
  h = Hash.new
  until n == 1 or h[n]
    h[n] = 1
    sq = []
    until n == 0
      sq << (n % 10) ** 2
      n /= 10
    end
    n = sq.reduce(:+)
  end
  h[n].nil?
end
