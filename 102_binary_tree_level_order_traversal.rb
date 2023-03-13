def level_order(root)
  l = []
  c = []
  q = [root]
  until q.all? { |n| n.nil? }
    ln = q.length
    ln.times do
      if q[0]
        c << q[0].val
        if q[0].left
          q << q[0].left
        end
        if q[0].right
          q << q[0].right
        end
      end
      q.shift
    end

    l << c.dup
    c.clear
  end
  l
end
