class Game

  @game = nil

  attr_reader :current_player

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player = player1
    @current_opponent = player2
  end

  def self.start(game)
    @game = game
  end

  def self.current
    @game
  end

  def store_self
    @game = self
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def switch_player
    @current_player = @players.select { |player| player != current_player }.pop
  end

  def current_opponent
    @current_opponent = @players.select { |player| player != current_player }.pop
  end

  def any_dead?
    player1.hp <= 0 || player2.hp <= 0
  end
end
