require_relative '../app.rb'

describe Battle do

  let(:game) { double :game }

  it 'should store and display the current game' do
    described_class.store_game=(game)
    expect(described_class.game).to eq game
  end
end
