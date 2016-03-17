feature "Swtich turns" do
  scenario "display Player 1's turn when game starts" do
    sign_in_and_play
    expect(page).to have_content "Misa's turn"
  end

  scenario "switch turns after Player 1's attack" do
    sign_in_and_play
    click_button "Basic Attack"
    click_link "Next round!"
    expect(page).not_to have_content "Misa's turn"
    expect(page).to have_content "Pete's turn"
  end
end
