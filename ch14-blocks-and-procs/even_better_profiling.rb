def profile(block_description, &block)
  $on = true
  if $on
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

=begin
print "Run with profiling? (y/n): "
ans = gets.chomp.downcase
if ans == 'y'
  $on = true
elsif ans == 'n'
  $on = false
else
  puts "input has to be either y/n"
end
=end

profile '25000 doublings' do
  number = 1
  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
  # That's the number of digits in this HUGE number.
end

profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end