require "rails_helper"
require "./lib/app.rb"
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'
Capybara.default_driver = :selenium

feature 'view hit points' do
  scenario 'show hit points' do
    sign_in_and_play
    expect(page).to have_content 'Jim: 100 HP'
  end
end
