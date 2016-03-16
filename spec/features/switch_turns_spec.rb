describe 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "ass's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'attack!'
      click_button 'switch turns!'
      expect(page).not_to have_content "ass's turn"
      expect(page).to have_content "boob's turn"
    end
  end
end
