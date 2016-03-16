require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }

  describe '#new game' do
    it 'should accept two player instances' do
      expect{ Game.new(player_1, player_2) }.to_not raise_error
    end
  end

  describe "#attack" do
    it 'should call is_attacked on player' do
      expect(player_2).to receive :is_attacked
      game.attack(player_2)
    end
  end
end
