require './ch10-nothing-new/shuffle.rb'

describe 'shuffle' do
  before :each do
    srand(67809)
    allow(STDOUT).to receive(:puts)
  end
  it 'shuffles' do
    array = [1,2,3,4,5,6,7,8,9]
    shuffled = [3, 7, 2, 6, 9, 4, 8, 1, 5]
    allow(array).to receive(:shuffle).and_return shuffled
    expect(shuffle(array)).to eq shuffled
  end
end