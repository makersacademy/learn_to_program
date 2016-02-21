def grandfather_clock &block


hours_passed = Time.new.hour 

if hours_passed > 12
   hours_passed -= 12
end
	hours_passed.times(&block)
end

grandfather_clock {puts 'Dong'}


# This programme will output "Dong" once for
# each hour that has passed today

# require './ch14-blocks-and-procs/grandfather_clock.rb'

# describe 'grandfather clock' do
#   it 'dongs or does whatever you put in the block' do 
#     allow(Time).to receive_message_chain('new.hour') { 4 }
#     expect(STDOUT).to receive(:puts).with('DONG!').exactly(4).times
#     grandfather_clock do
#       puts 'DONG!'
#     end
#   end
# end