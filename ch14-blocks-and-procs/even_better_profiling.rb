def timing block_description, &block
  timing_on = false

if timing_on == true
  start_time = Time.new
  block.call
  duration = start_time - Time.new
  puts "#{blockdes} completed in #{duration}"

else
  block.call
end

end
