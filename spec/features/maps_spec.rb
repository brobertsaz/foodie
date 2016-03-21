require 'rails_helper'

RSpec.feature "Maps", type: :feature, js: :true do

  before(:each) do
    build_trucks
    visit root_path
  end

  it 'has a map' do
    expect(page).to have_css("#map")
  end

  it 'searches by address' do
    fill_in 'address', with: "299 2nd Street, San Francisco"
    click_button 'Go'
    expect(page).to have_content "Quan Catering"
    expect(page).to have_content "222 02ND ST"
  end

  it 'shows closest first 5 results' do
    fill_in 'address', with: "299 2nd Street, San Francisco"
    click_button 'Go'
    expect(page).to have_content "Paradise Catering"
    expect(page).to have_content "Quan Catering"
    expect(page).to have_selector('.food-items', count: 5)
  end

  it 'doesnt show furthest result' do
    fill_in 'address', with: "299 2nd Street, San Francisco"
    click_button 'Go'
    expect(page).not_to have_content "Liang Bai Ping"
    expect(page).not_to have_content "Curbside Coffee"
  end

  it 'shows details for a truck' do
    click_link "Quan Catering"
    expect(page).to have_content
  end
end

def build_trucks
  all_trucks = YAML.load(File.open("config/test_trucks.yml"))
  all_trucks.each do |truck|
    create :food_truck,
          name: truck["name"],
          address: truck["address"],
          longitude: truck["longitude"],
          latitude: truck["latitude"],
          location_description: truck["location_description"],
          facility_type: truck["facility_type"],
          food_items: truck["food_items"]
  end
end

