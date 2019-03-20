require_relative '../../app.rb'

feature 'home page welcome text' do
  scenario 'home page shows welcome test' do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end
