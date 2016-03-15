require "rails_helper"
require "./lib/app.rb"
require 'rspec'
require 'capybara/rspec'
require 'capybara/dsl'
Capybara.default_driver = :selenium

feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Bob vs Jim'
  end
end
