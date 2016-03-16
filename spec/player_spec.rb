require 'player'

describe Player do

  describe "#name" do
    it "should return the player's name" do
      player = described_class.new("Misa")
      expect(player.name).to eq "Misa"
    end
  end
end
