  $nesting_depth = 0

def log desc, &block

  buffer = ' ' * $nesting_depth
  puts buffer + "Beginning #{desc}..."
  $nesting_depth += 1
  output = block.call
  $nesting_depth -= 1
  puts buffer + "... #{desc} finished, returning: #{output}"
  end

  log "'outer block'" do
    log "'some little block'" do
      log "'teeny tiny block'" do
        "lots of love"
      end
    6 * 7
  end
  log "'yet anothr block'" do
    puts "I love Indian food!"
  end 
  5== 5
  end
