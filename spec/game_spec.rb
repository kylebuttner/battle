require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:player) { double(:player) }

  describe "#attack" do
    it 'should call is_attacked on player' do
      expect(player).to receive :is_attacked
      game.attack(player)
    end
  end
end
