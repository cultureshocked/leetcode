# Slow, could be improved.
def is_symmetric(root)
  q = [root]
  v = []
  until q.empty? or (q.all? {|e| e.nil?}) do
    v.clear
    l = q.length
    l.times do
      if q[0]
        v << q[0].val
        q << q[0].left
        q << q[0].right
      else
        v << nil
        q << nil
        q << nil
      end
      q.shift
    end
    s = 0
    l -= 1
    while s < l do
      return false unless v[s] == v[l]
      s += 1
      l -= 1
    end
  end
  return true
end
