class Character
  attr_reader :damage

  def initialize
    @damage = 1
  end

  def attack
    puts "You attack the gnoll pup for #{@damage} damage!"
  end
end