class ArithmeticProgression < Progression
  def initialize(increment = 1, start = 0)
    super(start)
    @increment = increment
  end

  def advance
    @current += @increment
  end
end