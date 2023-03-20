class Node
  attr_accessor :is_word
  def initialize()
    @children = Array.new(26) { nil }
    @is_word = false
  end

  def add_word(word)
    if word.length == 0
      @is_word = true
      return
    end
    n = word[0].ord-97
    word.shift
    unless @children[n]
      @children[n] = Node.new
    end
    @children[n].add_word(word)
  end

  def search(word, idx)
    return @is_word if idx == word.length
    if word[idx] == "."
      for child in @children
        next if child.nil?
        next if child.search(word, idx+1) == false
        return true
      end
      return false
    end
    n = word[idx].ord - 97
    return false unless @children[n]
    return @children[n].search(word, idx+1)
  end
end

class WordDictionary

  def initialize()
    @root = Node.new
  end

=begin
    :type word: String
    :rtype: Void
=end
  def add_word(word)
    @root.add_word(word.chars)
  end

=begin
    :type word: String
    :rtype: Boolean
=end
  def search(word)
    @root.search(word, 0)
  end

end
