class BrowserHistory

=begin
    :type homepage: String
=end
  def initialize(homepage)
    @ptr = 0
    @hist = [homepage]
  end

=begin
    :type url: String
    :rtype: Void
=end
  def visit(url)
    unless @ptr == @hist.length - 1
      @hist = @hist.slice(0..@ptr)
    end
    @hist << url
    @ptr += 1
    return
  end

=begin
    :type steps: Integer
    :rtype: String
=end
  def back(steps)
    @ptr -= steps
    if @ptr < 0
      @ptr = 0
    end
    return @hist[@ptr]
  end

=begin
    :type steps: Integer
    :rtype: String
=end
  def forward(steps)
    @ptr += steps
    if @ptr > (@hist.length - 1)
      @ptr = @hist.length - 1
    end
    return @hist[@ptr]
  end
end
