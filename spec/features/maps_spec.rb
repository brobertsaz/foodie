require 'rails_helper'

RSpec.feature "Maps", type: :feature do

  before(:each) do
    visit root_path
  end

  it 'has a map' do
    expect(page).to have_css("#map")
  end

  it 'searches by address', js: :true do
    create :food_truck
    binding.pry
    fill_in 'address', with: "299 2nd Street, San Francisco"
    click_button 'Go', match: :first
    expect(page).to have_content "Quan Catering"
    expect(page).to have_content "222 02ND ST"

  end
end

