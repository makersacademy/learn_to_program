$NEST_DEPTH = 0

def log desc
  puts "#{" "*$NEST_DEPTH}Kicking \"#{desc}\" off!"
  $NEST_DEPTH += 2
  val = yield
  $NEST_DEPTH -= 2
  puts "#{" "*$NEST_DEPTH}Phew! \"#{desc}\" is over. The block returned #{val}."
end
