class Player

  DEFAULT_HP = 100
  attr_reader :name, :hp

  def initialize(name, hp=DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def attack(player)
    player.is_attacked
  end

  def is_attacked
    @hp -= 20
  end

end
