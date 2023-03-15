class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
    @val = val
    @left = left
    @right = right
  end
end

def is_complete_tree(root)
  q = [root]
  until q.all? { |n| (n) ? is_leaf?(n) : n.nil?} do
    l = q.length
    l.times do
      return false if q[0].nil?
      q << q[0].left
      q << q[0].right
      q.shift
    end
  end

  return true if ((q.all? { |n| n.nil? }) or (q.all? { |n| (n.nil?) ? false : is_leaf?(n)}))
  mid = q.index(nil)
  nodes = q.slice(0...mid)
  nils = q.slice(mid...q.length)
  return true if ((nodes.all? {|n| (n.nil?) ? false : is_leaf?(n) } ) and (nils.all? { |n| n.nil? }))
  false
end

def is_leaf?(node)
  return ((node.left == nil) and (node.right == nil))
end
