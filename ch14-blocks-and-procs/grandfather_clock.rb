# this method is taking a block, so put & before the block name
def clock &dong
  n = Time.new.hour
  if n > 12
    n = n - 12
  end

  if n == 0
    n = 12
  end

  n.times do
    dong.call # this calls the block here
  end
end

# to write the block in - first call the method, then immediately 
# write the block - the method is expecting to take a block so you just
# start writing do . . . . . . end. A block is just do... end.
clock do
  puts "Dong!"
end
