require_relative '../../app.rb'

feature 'Start a fight and enter names' do
  scenario 'players can submit names and see names on screen' do
    visit('/')
    fill_in :player_1_name, with: 'Arthur'
    fill_in :player_2_name, with: 'Amy'
    click_button "Start fight!"

    expect(page).to have_content 'Arthur v Amy'
  end
end
