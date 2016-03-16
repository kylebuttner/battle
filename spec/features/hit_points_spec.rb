RSpec.feature "1. Display P2 hitpoints", type: :feature do

  let(:max_hp) { Battle::MAX_HP }
  let(:p2_hp) { Battle::MAX_HP }

  scenario 'Page displays P2 HP as text' do
    sign_in_and_play
    expect(page).to have_content "Pete HP: #{p2_hp}/#{max_hp}"
  end

#   scenario '1.1 Page displays player2 hitpoints as progress bar' do
#     visit '/'
#     fill_in(:player1, with: 'Misa')
#     fill_in(:player2, with: 'Pete')
#     click_button 'Enter Battle!!'
#     expect(page.has_xpath?("//progress[@max=60][@value=60]"))
#   end
end
