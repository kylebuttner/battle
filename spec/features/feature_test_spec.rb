require "rails_helper"
require "./lib/app.rb"
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'
Capybara.default_driver = :selenium

RSpec.feature "Battle game", :type => :feature do
  scenario "Allows users to enter names" do
    visit "http://localhost:9393/"

    fill_in 'player_1_name', with: 'Bob'
    fill_in 'player_2_name', with: 'Jim'
    click_button 'Submit'

    expect(page).to have_text("Bob")
  end
end
