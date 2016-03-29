require_relative '../../ch10-nothing-new/ninety_nine_bottles_of_beer'

RSpec.describe 'bottlesOfBeerSong' do
  it 'returns nil when passed negative numbers' do
    expect(bottlesOfBeerSong(-1)).to eq nil
  end
end