RSpec.feature '2. Attack P2', type: :features do

  scenario 'P1 attacks P2 and P2 loses HP' do
    sign_in_and_play
    visit '/play'
    click_link('Attack!')
    expect(page).to have_content "Pete HP: 58"
  end
end
