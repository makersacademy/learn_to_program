$tracker = -1

def log desc, &block
  $tracker = $tracker + 1
  puts " "*$tracker + "'#{desc}' started..."
  x = block.call.to_s
  puts " "*$tracker + "'#{desc}' complete. Return value: " + x
  $tracker = $tracker -1

end

log 'outer block' do
  log  'inner block' do
    log 'inside inner block' do
      'i\'m so deep!'
    end
    'raising from the depths...'
  end
  log 'another inner block' do
    log 'inside another inner block' do
      'Oh no! I sank back down'
    end
    'Rising again...'
  end

  'Back up!'

end

