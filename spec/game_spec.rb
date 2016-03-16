require 'game'

describe Game do
  
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2, receive_attack: nil }

  describe '#attack' do
    it 'should let player receive attack' do
      expect(player2).to receive(:receive_attack)
      game.attack(player2)
    end
  end

  describe '#current_player' do
    it 'should return Player 1 when game starts' do
      expect(game.current_player).to eq player1
    end

    it 'should return Player 2 in even rounds' do
      game.attack(player2)
      expect(game.current_player).to eq player2
    end
  end

  describe '#opponent' do
    it 'should return Player 2 when game starts' do
      expect(game.opponent).to eq player2
    end

    it 'should return Player 1 in even rounds' do
      game.attack(player2)
      expect(game.opponent).to eq player1
    end
  end
end
