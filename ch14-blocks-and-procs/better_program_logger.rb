$logger_depth = 0

def log desc, &block
  prefix = ' '*$logger_depth
  puts prefix+"Beginning #{desc.inspect}..."
  $logger_depth += 1
  result = block[]
  $logger_depth -= 1
  puts prefix+"...#{desc.inspect} finished, returning: #{result}"
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lOtS oF lOVe'.downcase
    end
    7 * 3 * 2
  end

  log 'yet another block' do
    '!doof naidnI evol I'.reverse
  end
  '0' == "0"
end

=begin I just don't care about this one anymore. The test is stupid. I spent too much time trying to figure this out. 
$count = 0

def log desc, &block
  space = '  '*$count
  puts space+"Beginning \"#{desc}\"..."
  $count += 1
  result = block.call
  $count -= 1
  puts space+"...\"#{desc}\" finished, returning: #{result}"
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'i am pissed'
    end
    
    "Nikesh is a funny man."
  end

  log 'yet another block' do
    'pass the damn rspec'.upcase
  end

  number = 1
  25000.times { number = number + number }
  "#{number.to_s.length} digits"
end

=end
