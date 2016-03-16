class Game

  attr_reader :player_1, :player_2, :current_turn

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @current_turn = player_1
  end

  def attack(player)
    player.is_attacked
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  private

  def opponent_of(player)
    if player == @player_2
      @player_1
    else
      @player_2
    end
  end

end
