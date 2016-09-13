def profile status = "on", block_description, &block
    start_time = Time.new
    block.call
    if status != "off"
      duration = Time.new - start_time
      puts "#{block_description}: #{duration} seconds"
  end
end

profile "off", "count to a million" do
  number = 0
  1000000.times do
    number = number + 1
  end
  puts "Result #{number}"
end
