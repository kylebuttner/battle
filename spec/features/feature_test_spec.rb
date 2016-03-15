require "rails_helper"
require "./lib/app.rb"
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'
Capybara.default_driver = :selenium

feature 'Enter names' do
  scenario 'submitting names' do
    visit('localhost:9393/')
    fill_in :player_1_name, with: 'Bob'
    fill_in :player_2_name, with: 'Jim'
    click_button 'Submit'
    expect(page).to have_content 'Bob vs Jim'
  end
end
