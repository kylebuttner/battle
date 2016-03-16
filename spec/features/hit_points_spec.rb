require 'capybara'
require 'spec_helper'

feature "hit points" do
  scenario "view opponents hit points" do
    sign_in_and_play
    expect(page).to have_content "100 HP"
  end
end
