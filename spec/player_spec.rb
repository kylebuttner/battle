require 'player'

describe Player do
  let(:name) { double(:name) }
  subject(:player) { described_class.new(name) }

  describe 'player name' do
    it 'should return a player name' do
      expect(player.name).to eq name
    end
  end

  describe 'player HP' do
    it 'shoud start with 100 HP' do
      expect(player.hp).to eq 100
    end
  end

  describe '#is_attacked' do
    it 'should reduce player hp by 20' do
      player.is_attacked
      expect(player.hp).to eq 80
    end
  end
end
