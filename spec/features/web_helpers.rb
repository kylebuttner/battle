def sign_in_and_play
  visit '/'
  fill_in(:player1, with: 'Misa')
  fill_in(:player2, with: 'Pete')
  click_button 'Enter Battle!!'
end
