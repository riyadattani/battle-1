class Player
  attr_reader :name, :hit_points
  # attr_accessor :hp
  DEFAULT_HP = 50
  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def attack(name)
    name.damage
  end

  def damage
    @hit_points -=10
  end
end