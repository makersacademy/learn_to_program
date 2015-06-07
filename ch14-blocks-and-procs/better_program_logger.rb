# setting global variables - these you can see from anywhere in your code
$logger_depth = 0


def log desc, &block
  prefix = '  '*$logger_depth

  puts "#{prefix}Beginning \"#{desc}\"..."

  $logger_depth += 1
  result = block.call

  $logger_depth += 1
  puts "#{prefix}...\"#{desc}\" finished, returning: #{result.to_s}"

end

log 'outer block' do

  log 'some little block' do
    5
  end

  log 'yet another block' do
    "I like Thai food"
  end

  false
end
