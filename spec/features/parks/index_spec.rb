require 'rails_helper'

RSpec.describe 'Search Parks by State' do
  it 'lists all parks from the selected state' do
    visit root_path

    select "Tennessee", from: :state
    click_button 'Find Parks'

    expect(current_path).to eq(parks_path)
    expect(page).to have_content('Number of parks: 15')

    within '#park-0' do
      expect(page).to have_content('Andrew Johnson National Historic Site')
      expect(page).to have_content("Description: Andrew Johnson's complex presidency (1865-69)")
      expect(page).to have_content("How to get here: GPS The GPS setting for Andrew Johnson NHS may be listed as 121 Monument Ave,")
      expect(page).to have_content("Standard Operating Hours:")
      expect(page).to have_content("Wednesdays: 9:00AM - 4:00PM")
      expect(page).to have_content("Mondays: 9:00AM - 4:00PM")
      expect(page).to have_content("Thursdays: 9:00AM - 4:00PM")
      expect(page).to have_content("Sundays: 9:00AM - 4:00PM")
      expect(page).to have_content("Tuesdays: 9:00AM - 4:00PM")
      expect(page).to have_content("Fridays: 9:00AM - 4:00PM")
      expect(page).to have_content("Saturdays: 9:00AM - 4:00PM")
    end

    within '#park-1' do
      expect(page).to have_content('Appalachian National Scenic Trail')
      expect(page).to have_content("Description: The Appalachian Trail is a 2,180+ mile long public footpath that traverses the scenic, wooded, pastoral, wild, and culturally resonant lands")
      expect(page).to have_content("How to get here: There are many points of access along the Appalachian Trail, whether it is by car, train, bus or plane. For more detailed directions")
      expect(page).to have_content("Standard Operating Hours:")
      expect(page).to have_content("Wednesdays: All Day")
      expect(page).to have_content("Mondays: All Day")
      expect(page).to have_content("Thursdays: All Day")
      expect(page).to have_content("Sundays: All Day")
      expect(page).to have_content("Tuesdays: All Day")
      expect(page).to have_content("Fridays: All Day")
      expect(page).to have_content("Saturdays: All Day")
    end
  end
end
