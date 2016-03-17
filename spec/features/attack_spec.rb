feature 'Attack' do
  before do
    sign_in_and_play
    visit '/play'
  end

  scenario 'P1 selects basic attack and P2 loses HP' do
    click_button "Basic Attack"
    expect(page).to have_content "Pete HP: 8"
  end

  scenario 'P2 attacks P1 and P1 loses HP' do
    click_button "Basic Attack"
    click_link('Next round!')
    click_button('Basic Attack')
    expect(page).to have_content "Misa HP: 8"
  end
end
