class Progression
  def initialize(start = 0)
    @current = start
  end

  def advance
    @current += 1
  end

  def next
    if @current.nil?
      raise StopIteration()
    else
      answer = @current
      advance
      return answer
    end
  end

  def print_progression(n)
    result = []
    
    n.times do
      result << self.next
    end

    puts result.join(", ")
  end
end