require './ch09-writing-your-own-methods/ask.rb'

describe 'ask' do
  it 'returns true when you say yes' do
    stub(:puts).with('anything')
    stub(:puts).with('Please answer "yes" or "no".')
    stub(:gets).and_return 'yes'
    expect(ask('anything')).to be true
  end
  it 'returns false when you say no' do
    stub(:puts).with('anything')
    stub(:puts).with('Please answer "yes" or "no".')
    stub(:gets).and_return 'no'
    expect(ask('anything')).to be false
  end
end