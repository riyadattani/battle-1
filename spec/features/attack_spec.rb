require_relative '../../app.rb'

feature 'Attacking' do
  scenario 'player 1 attacked player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Arthur attacked Riya'
  end
end