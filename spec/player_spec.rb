require 'player'

describe Player do
  let(:name) { double(:name) }
  subject(:player) { described_class.new(name) }

  describe 'player name' do
    it 'should return a player name' do
      expect(player.name).to eq name
    end
  end
end
