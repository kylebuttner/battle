def sign_in_and_play
  visit('localhost:9393/')
  fill_in :player_1_name, with: 'Bob'
  fill_in :player_2_name, with: 'Jim'
  click_button 'Submit'
end
