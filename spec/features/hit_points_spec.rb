require 'capybara'
require 'spec_helper'

feature "hit points" do
  scenario "view opponents hit points" do
    visit "/"

    fill_in "player_1_name", :with => "ass"
    fill_in "player_2_name", :with => "boob"
    click_button "Submit"

    expect(page).to have_content "100 HP"
  end
end
