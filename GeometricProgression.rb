class GeometricProgression < Progression
  def initialize(base = 2, start = 1)
    super(start)
    @base = base
  end

  def advance
    @current *= @base
  end
end