def profile block_description, &block
  profiling_on = true
  if profiling_on
  beginning_time = Time.now
(1..10000).each { |i| i }
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
end
end

profile 'count to a million' do number = 0
1000000.times do
    number = number + 1
end end
