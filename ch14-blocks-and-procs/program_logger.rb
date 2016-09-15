def log desc, &block
 puts "started block #{desc}"
 puts "ended block #{desc}, result is: #{block.call}"
end

log 'passing1' do 
    log 'passing2' do
        puts "I'm bock 2"
        3*4
    end
    10+10
end