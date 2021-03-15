class FibonacciProgression < Progression
  def initialize(first = 0, second = 1)
    super(first)
    @prev = second - first
  end

  def advance
    # @prev, @current = @current, @prev + @current
    current = @current
    @current = @prev + @current
    @prev = current
  end
end