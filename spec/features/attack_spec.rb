RSpec.feature '2. Attack P2', type: :features do

  let(:p2_hp) { 60 }
  let(:single_attack) { 2 }

  scenario 'P1 attacks P2 and P2 loses HP' do
    sign_in_and_play
    visit '/play'
    find_button('Attack P2').click
    expect(page).to have_content "Pete HP: #{p2_hp - single_attack}"
  end
end
