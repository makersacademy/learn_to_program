$var = ' '
$i = 0

def better_log(des, &block)
  puts $var*$i + "Beginning \"#{des}\"...".strip
  $i += 1
  y = yield
  $i -= 1
  puts $var*$i + "...\"#{des}\" finished, returning: #{y}"
end


better_log("outer block") do
  better_log("some little block") do
    better_log("teeny-tiny block") do
    "lots of love"
  end
    "42"
  end
  better_log("yet another block") do
    "I love Indian food!"
  end
  true
end