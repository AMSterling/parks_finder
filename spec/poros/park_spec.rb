require 'rails_helper'

RSpec.describe 'Park', type: :poros do
  it 'has attributes' do
    parks = ParkFacade.search('OK')
    park1 = parks[0]
    park2 = parks[1]

    expect(park1).to be_a Park
    expect(park1.id).to eq('16809469-7649-4DFA-9C76-57F2B9946DDC')
    expect(park1.full_name).to eq('Chickasaw National Recreation Area')
    expect(park1.description).to eq('Springs, streams, lakes - whatever its form, water is the attraction at Chickasaw National Recreation Area.')
    expect(park1.direction_info).to eq('From US I-35 drive through the towns of Davis and towards the town of Sulphur. There are a variety of destinations in the park to choose from.')
    expect(park1.standard_hours).to have_key(:wednesday)
    expect(park1.standard_hours[:wednesday]).to eq('All Day')
    expect(park2.full_name).to eq('Fort Smith National Historic Site')
  end
end
