$count = 0

def better_log desc, &block
  puts (" " * $count) + "Beginning \"#{desc}\"..."
  end_count = $count
  $count += 1
  output = block.call
  puts (" " * end_count) + "...\"#{desc}\" finished, returning: #{output}"
  $count -= 1
end

#program_log 'outer block' do
#      program_log 'some little block' do
#        program_log "teeny" do
#          "lots of love"
#        end
#        1**1 + 2**2
#      end
#
#      program_log 'yet another block' do
#        '!doof iahT ekil I'.reverse
#      end
#
#      '0' == 0
#end
