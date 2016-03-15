require "rails_helper"
require "./lib/app.rb"
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'
Capybara.default_driver = :selenium

feature 'attack player 2' do
  scenario 'show confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Jim hit Bob'
  end
end
