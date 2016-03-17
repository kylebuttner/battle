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
    it "should reduce player's HP upon attack" do
      player.receive_attack(Attack::BASIC_DAMAGE)
      expect(player.hp).to eq Player::MAX_HP - Attack::BASIC_DAMAGE
    end
  end
end
