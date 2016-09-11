def bong &block
  $time = Time.new.hour

  if $time == 0
    12.times {puts block.call}
  else
    $time.times {puts block.call}
  end
end

bong do
  "BONG"
end
