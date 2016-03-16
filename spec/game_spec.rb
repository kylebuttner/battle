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

  describe '#current_turn' do
    it 'should start turns with player 1' do
      expect(game.current_turn).to eq player_1
    end
  end

  describe '#switch_turns' do
    it 'should switch turns to player 2' do
      game.switch_turns
      expect(game.current_turn).to eq player_2
    end
  end
end
