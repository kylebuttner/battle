RSpec.feature '2. Attack P2', type: :features do

  before(:each) do
    sign_in_and_play
    visit '/play'
    click_link('Attack!')
  end

  scenario 'P1 attacks P2 and P2 loses HP' do
    expect(page).to have_content "Pete HP: 8"
  end

  scenario 'P2 attacks P1 and P1 loses HP' do
    click_link('Next round!')
    click_link('Attack!')
    expect(page).to have_content "Misa HP: 8"
  end
end
