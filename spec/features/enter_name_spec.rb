RSpec.feature "0. User Entry", :type => :feature do

  scenario "users enter names and page displays names" do
    visit '/'
    fill_in(:player1, with: 'Misa')
    fill_in(:player2, with: 'Pete')
    click_button 'Enter Battle!!'
    expect(page).to have_content 'Misa vs. Pete'
  end
end
