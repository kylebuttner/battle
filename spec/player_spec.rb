require 'player'

describe Player do

  subject(:player) { described_class.new("Misa") }

  describe "#name" do
    it "should return the player's name" do
      expect(player.name).to eq "Misa"
    end
  end

  describe "#hp" do
    it 'should return the HP of the player' do
      expect(player.hp).to eq Player::MAX_HP
    end
  end

  describe "#receive_attack" do
    it "shuold reduce player's HP upon attack" do
      player.receive_attack
      expect(player.hp).to eq Player::MAX_HP - 2
    end
  end
end
