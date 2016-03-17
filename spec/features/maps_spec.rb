require 'rails_helper'

RSpec.feature "Maps", type: :feature do
  before(:each) do
    visit root_path
  end

  it 'has a map' do
    expect(page).to have_css("#map")
  end

  it 'searches by address' do
    fill_in 'address', with: "299 2nd Street, San Francisco"
    click_button 'Go', match: :first
    expect(page).to have_content "Steve's Mobile Del"
    # expect(page).to have_content "Eritrean & Irish Fusion Burgers"
  end
end
