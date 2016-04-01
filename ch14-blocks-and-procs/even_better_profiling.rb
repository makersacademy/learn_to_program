def profile(block_description, &block)
    if block_description == "off"
        block.call
    else
    start_time = Time.new
    block.call
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
    end
end


profile("25000 doublings") do 
    num = 1
    25000.times do 
        num= num+num
    end
    puts "#{num.to_s.length} digits"
end

profile("off") do
    num = 0
    1000000.times do
        num += 1
    end
end
