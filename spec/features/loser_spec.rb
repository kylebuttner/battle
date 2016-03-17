feature "Losing the game" do
  before do
    sign_in_and_play
    visit '/play'
    8.times do
      click_button 'Basic Attack'
      click_link 'Next round!'
    end
    click_button 'Basic Attack'
  end

  scenario "display a 'lose' message when HP reaches 0" do
    expect(page).to have_content "Pete has lost! :("
  end

  scenario "play again" do
    click_link "Play again"
    expect(page).to have_content "Enter Battle!!"
  end
end
