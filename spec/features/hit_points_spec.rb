RSpec.feature "1. Display hitpoints", :type => :feature do

  let(:p2_hp) { '60' }

  scenario 'Page displays player2 hitpoints as text' do
    visit '/'
    fill_in(:player1, with: 'Misa')
    fill_in(:player2, with: 'Pete')
    click_button 'Enter Battle!!'
    expect(page).to have_content "Pete HP: #{p2_hp}"
  end

#   scenario '1.1 Page displays player2 hitpoints as progress bar' do
#     visit '/'
#     fill_in(:player1, with: 'Misa')
#     fill_in(:player2, with: 'Pete')
#     click_button 'Enter Battle!!'
#     expect(page.has_xpath?("//progress[@max=60][@value=60]"))
#   end
end
