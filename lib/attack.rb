class Attack

  def initialize(player)
    @player = player
  end

  def self.run(player)
    new(player).basic
  end

  def basic
    @player.receive_attack
  end

end
