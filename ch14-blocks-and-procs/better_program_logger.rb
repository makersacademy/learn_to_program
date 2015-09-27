$nesting_depth = 0
def log desc, &block
  nesting_var = '  '*$nesting_depth
  puts "#{nesting_var}Beginning #{desc}..."
  $nesting_depth = $nesting_depth + 1
  result = block.call
  $nesting_depth = $nesting_depth - 1
  puts "#{nesting_var}#{desc} finished, returning: #{result}"
end

log 'outer block' do

  log 'some_little_block' do
    log 'teeny-tiny block' do
   'lOtS oF lOVe'.downcase
  end
    number = 0
  1000000.times do
    number = number + 1
  end
end

log 'yet another block' do
 alphabet = []
  ('a'..'z').each do |letter|
    alphabet.push letter
  end
 alphabet.to_s
 end
false
end