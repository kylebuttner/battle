class Attack

  BASIC_DAMAGE = 2

  def initialize(player)
    @player = player
  end

  def self.run(player, type)
    new(player).send(type.to_sym)
  end

  def basic
    @player.receive_attack(BASIC_DAMAGE)
  end

  def random
    @player.receive_attack(random_damage)
  end

  private

  def random_damage
    Kernel.rand(1..6)
  end

end
