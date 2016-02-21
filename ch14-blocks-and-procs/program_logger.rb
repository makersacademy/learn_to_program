def program_log desc, &block
  puts "Beginning \"#{desc}\"..."
  returned_block = block.call
  puts "...\"#{desc}\" finished, returning: #{returned_block}"
end

program_log "outer block" do
  program_log "some little block" do
    5
  end

  program_log "yet another block" do
    "I like Thai food!"
  end

  false
end




# require './ch14-blocks-and-procs/program_logger.rb'

# describe 'program logger' do
#   it 'logs' do
#     expect(STDOUT).to receive(:puts).with 'Beginning "outer block"...'
#     expect(STDOUT).to receive(:puts).with 'Beginning "some little block"...'
#     expect(STDOUT).to receive(:puts).with '..."some little block" finished, returning: 5'
#     expect(STDOUT).to receive(:puts).with 'Beginning "yet another block"...'
#     expect(STDOUT).to receive(:puts).with '..."yet another block" finished, returning: I like Thai food!'
#     expect(STDOUT).to receive(:puts).with '..."outer block" finished, returning: false'

#     program_log 'outer block' do
#       program_log 'some little block' do
#         1**1 + 2**2
#       end

#       program_log 'yet another block' do
#         '!doof iahT ekil I'.reverse
#       end

#       '0' == 0
#     end
#   end
# end

#..................................

# def do_self_importantly some_proc
#   puts "Everybody just HOLD ON! I'm doing something..."
#   some_proc.call
#   puts "OK everyone, I'm done. As you were."
# end
#
# say_hello = Proc.new do
#   puts 'hello'
# end
#
# say_goodbye = Proc.new do
#   puts 'goodbye'
# end
#
# do_self_importantly say_hello
# do_self_importantly say_goodbye

# Output:
# Everybody just HOLD ON! I'm doing something...
# hello
# OK everyone, I'm done. As you were.
# Everybody just HOLD ON! I'm doing something...
# goodbye
# OK everyone, I'm done. As you were.