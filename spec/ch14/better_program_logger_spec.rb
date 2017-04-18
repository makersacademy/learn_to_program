require './ch14-blocks-and-procs/better_program_logger.rb'

describe 'program logger' do
  it 'logs' do
    expect(STDOUT).to receive(:puts).with "Beginning \"outer block\"..."
    expect(STDOUT).to receive(:puts).with "\tBeginning \"some little block\"..."
    expect(STDOUT).to receive(:puts).with "\t\tBeginning \"teeny-tiny block\"..."
    expect(STDOUT).to receive(:puts).with "\t\t...\"teeny-tiny block\" finished, returning: lots of love"
    expect(STDOUT).to receive(:puts).with "\t...\"some little block\" finished, returning: 42"
    expect(STDOUT).to receive(:puts).with "\tBeginning \"yet another block\"..."
    expect(STDOUT).to receive(:puts).with "\t...\"yet another block\" finished, returning: I love Indian food!"
    expect(STDOUT).to receive(:puts).with "...\"outer block\" finished, returning: true"

    better_log 'outer block' do
      better_log 'some little block' do
        better_log 'teeny-tiny block' do
          'lOtS oF lOVe'.downcase
        end
        7 * 3 * 2
      end

      better_log 'yet another block' do
        '!doof naidnI evol I'.reverse
      end
      '0' == "0"
    end
  end
end
