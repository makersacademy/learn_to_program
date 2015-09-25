require './ch14-blocks-and-procs/program_logger.rb'

describe 'program logger' do
  it 'logs' do
    expect(STDOUT).to receive(:puts).with 'Beginning "outer block"...'
    expect(STDOUT).to receive(:puts).with 'Beginning "some little block"...'
    expect(STDOUT).to receive(:puts).with '..."some little block" finished, returning: 5'
    expect(STDOUT).to receive(:puts).with 'Beginning "yet another block"...'
    expect(STDOUT).to receive(:puts).with '..."yet another block" finished, returning: I like Thai food!'
    expect(STDOUT).to receive(:puts).with '..."outer block" finished, returning: false'

    log_this 'outer block' do
      log_this 'some little block' do
        1**1 + 2**2
      end

      log_this 'yet another block' do
        '!doof iahT ekil I'.reverse
      end

      '0' == 0
    end
  end
end