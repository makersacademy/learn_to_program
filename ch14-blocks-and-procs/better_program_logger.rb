$just = 0

def log desc, &block
  prefix = ' ' * $just
  puts prefix + "Beginning #{desc}"
  $just = $just + 1
  result = block.call
  $just = $just - 1
  str = "#{desc} finished, returning #{result}"
  puts prefix + str
end

log 'outer block' do
  log 'First block inside outer block ' do
    x = 5
    x
  end

  log 'Second block inside outer block' do
    x = "I like Thai food"
    x
  end

  x = "This is the result from outer block itself"
end
