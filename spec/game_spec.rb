require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player1 }
  let(:player2) { double :player2 }

  describe '#attack' do
    it 'should let player receive attack' do
      expect(player2).to receive(:receive_attack)
      game.attack(player2)
    end
  end
end
