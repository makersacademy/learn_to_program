# FIXME: should try to avoid global variables
$depth = 0

def log(desc, &block)
  puts "#{' ' * $depth}Beginning \"#{desc}\"..."
  $depth += 1
  result = block[]
  $depth -= 1
  puts "#{' ' * $depth}...\"#{desc}\" finished, returning: #{result}"
end

log('outer block') do
  log('some little block') do
    log('teeny-tiny block') { 'lots of love' }
    42
  end
  log('yet another block') { 'I love Indian food!' }
  true
end
