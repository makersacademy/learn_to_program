def grandfather_clock &block
  runcount = Time.new.hour
  runcount -= 12 if runcount > 12
  runcount.times do
    block.call
  end
end

#grandfather_clock do
#  puts 'DONG!'
#end
