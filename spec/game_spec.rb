require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2, receive_attack: nil }

  describe "start" do
    it "should store current instantce of Game" do
      described_class.start(game)
      expect(described_class.start(game)).to eq game
    end
  end

  describe "current" do
    it "should return the current instance of Game" do
      described_class.start(game)
      expect(described_class.current).to eq game
    end
  end

  describe '#current_player' do
    it 'should return Player 1 when game starts' do
      expect(game.current_player).to eq player1
    end

    it 'should return Player 2 after Player 1 attacks' do
      game.switch_player
      expect(game.current_player).to eq player2
    end
  end

  describe '#current_opponent' do
    it 'should return Player 2 when game starts' do
      expect(game.current_opponent).to eq player2
    end

    it 'should return Player 1 after Player 1 attacks' do
      game.switch_player
      expect(game.current_opponent).to eq player1
    end
  end
end
