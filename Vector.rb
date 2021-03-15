class Vector
  include Enumerable

  def initialize(dimensions)
    @coords = [0] * dimensions
  end

  def each(&block)
    @coords.each do |coord|
      block.call(coord)
    end
  end

  def [](index)
    @coords[index]
  end

  def []=(index, value)
    @coords[index] = value
  end

  def size
    @coords.size
  end

  def +(other)
    puts "adding #{self} with #{other}"
    raise TypeError unless other.class == Vector

    raise ArgumentError unless other.size == self.size

    result = Vector.new(size)
    self.each_with_index do |value, index|
      result[index] = value + other[index]
    end
    return result
  end

  def !=(other)
    @coords != other.coords
  end

  def to_s
    "<#{@coords.join(', ')}>"
  end
end