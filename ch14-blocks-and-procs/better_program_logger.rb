# FIXME: should try to avoid global variables
$depth = 0

def log(desc, &block)
  puts "#{' ' * $depth}Beginning \"#{desc}\"..."
  $depth += 1
  result = block[]
  $depth -= 1
  puts "#{' ' * $depth}...\"#{desc}\" finished, returning: #{result}"
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do 'lots of love' end
    42
  end
  log 'yet another block' do 'I love Indian food!' end
  true
end
