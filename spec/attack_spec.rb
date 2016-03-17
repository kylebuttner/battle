require 'attack'

describe Attack do

  subject(:attack) { described_class.new(player) }
  let (:player) { double(:player) }

  describe "run" do
    # it 'should create a new instance of attack' do
    #   expect(described_class).to receive(:new)
    #   described_class.run(player)
    # end

    it 'should run new attack' do
      expect(player).to receive(:receive_attack)
      described_class.run(player)
    end
  end
end
