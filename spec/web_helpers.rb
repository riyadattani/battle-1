def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Arthur'
  fill_in :player_2_name, with: 'Riya'
  click_button "Start fight!"
end