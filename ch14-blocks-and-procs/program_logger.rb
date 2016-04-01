=begin
def log(desc, &block)
    puts "Starting #{desc}"
    return_val = block.call
    puts "#{desc.capitalize} has ended returning #{return_val}"
end

log("outer block") do 
    log("inner block") do 
        5
    end 

    log("2nd inner block") do
       "I like thai food"
    end
    
    false
end

=end

def program_log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end

  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  '0' == 0
end
