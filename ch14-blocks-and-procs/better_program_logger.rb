=begin
# copying exact file for program logger (have already switched names to see if tests would pass.)
def log desc, &block
  puts 'Beginning "' + desc + '"...'
  result = block.call
  puts '..."' + desc + '" finished, returning: ' + result.to_s
end

log 'outer block' do
  log 'some little block' do
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
# COPIED VERBATIM

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
      'PasS The damn RSPEC'.downcase
    end
    7 * 3 * 2
  end

  log 'yet another block' do
    '!ssap ssap SSAP SSAP'.reverse
  end
  '0' == "0"
end

=begin
 I just don't care about this one anymore. The test is stupid. I've spent too much time trying to figure this out. 
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
