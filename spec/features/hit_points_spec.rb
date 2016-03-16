RSpec.feature "1. Display P2 hitpoints", type: :feature do

  let(:max_hp) { Player::MAX_HP }
  let(:p2_hp) { Player::MAX_HP }

  scenario 'Page displays P2 HP as text' do
    sign_in_and_play
    expect(page).to have_content "Pete HP: #{p2_hp}/#{max_hp}"
  end
end
