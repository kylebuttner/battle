class Game

  attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def attack_player_1
    @player_1.is_attacked
  end

  def attack_player_2
    @player_2.is_attacked
  end
end
