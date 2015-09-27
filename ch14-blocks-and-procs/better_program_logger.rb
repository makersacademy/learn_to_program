$depth = 0

def log desc, &block
  indent = ' '*$depth

  puts "#{indent}Beginning #{desc} ..."
  $depth = $depth + 3

  block.call

  puts "#{indent}Finished #{desc}"
  $depth = $depth - 3
  indent = ' '*$depth
end

log 'Simple arithemtic' do
  log 'More arithmetic' do
    1_000.times {1+1}
  end
  1_000.times {1*1}
end