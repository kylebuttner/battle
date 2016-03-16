require 'capybara'
require 'spec_helper'

  feature 'game over' do
    scenario 'show game over message' do
      sign_in_and_play
      8.times do
        click_button 'attack!'
        click_button 'switch turns!'
      end
        click_button 'attack!'
        expect(page).to have_content "BOOB LOST!"
    end
  end
