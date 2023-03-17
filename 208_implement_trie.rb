class Trie

  attr_accessor :children

  def initialize(val=nil, prefix=nil)
    @children = Array.new(26) {nil}
    @val = val
    @prefix = nil
    @word = nil

    if prefix and val
      @prefix = prefix.concat val
    elsif val
      @prefix = val
    end
  end

  def insert(word)
    n = word[0].ord - 97
    unless @children[n]
      @children[n] = Trie.new(word[0], word[0])
    end
    @children[n].insert_full(1, word)
  end

  def is_word?
    return !(@word.nil?)
  end

  def insert_full(idx, word)
    if idx == word.length
      @word = @prefix
      return
    end
    n = word[idx].ord - 97
    unless @children[n]
      @children[n] = Trie.new(word[idx], @prefix)
    end
    @children[n].insert_full(idx + 1, word)
  end

  def search(word)
    cn = self
    for ch in word.chars
      n = ch.ord - 97
      return false unless cn.children[n]
      cn = cn.children[n]
    end
    return cn.is_word?
  end

  def starts_with(prefix)
    cn = @children
    for ch in prefix.chars
      n = ch.ord - 97
      return false unless cn[n]
      cn = cn[n].children
    end
    true
  end

end
