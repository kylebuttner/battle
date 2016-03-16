require 'capybara'
require 'spec_helper'

feature "hit points" do
  scenario "view opponents hit points" do
    sign_in_and_play
    expect(page).to have_content "100 HP"
  end

  scenario "reduces opponents hit points" do
      sign_in_and_play
      click_button("attack!")
      expect(page).to have_content "boob: 80 HP"
  end
end
