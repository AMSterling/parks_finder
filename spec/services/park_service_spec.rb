require 'rails_helper'

RSpec.describe 'Park Service' do
  it 'gets a response from the API' do
    response = ParkService.total_by_state('OK')

    expect(response).to be_a Array
    expect(response[0]).to have_key(:id)
    expect(response[0]).to have_key(:fullName)
    expect(response[0]).to have_key(:description)
    expect(response[0]).to have_key(:directionsInfo)
    expect(response[0]).to have_key(:operatingHours)
    expect(response[0][:operatingHours][0]).to have_key(:standardHours)
  end
end
