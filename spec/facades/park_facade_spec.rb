require 'rails_helper'

RSpec.describe 'Park Facade' do
  it 'returns data for all parks by state' do
    parks = ParkFacade.search('OK')

    expect(parks).to be_a Array
    expect(parks.count).to eq 6
    expect(parks.first.description).to be_a String
    expect(parks.first.direction_info).to be_a String
    expect(parks.first.full_name).to be_a String
    expect(parks.first.id).to be_a String
    expect(parks.first.standard_hours).to be_a Hash
  end

  xit 'breaks standard hours if Hawaii is selected' do
    parks = ParkFacade.search('HI')

    expect(parks).to be_a Array
    expect(parks.count).to eq 9
    expect(parks.first.description).to be_a String
    expect(parks.first.direction_info).to be_a String
    expect(parks.first.full_name).to be_a String
    expect(parks.first.id).to be_a String
    expect(parks.first.standard_hours).to be_a Hash
  end
end
