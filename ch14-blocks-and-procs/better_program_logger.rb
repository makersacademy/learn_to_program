$indent = 0

def better_log desc, &block
  gap = " " * $indent
  puts gap + "Beginning \"#{desc}\"..."
  $indent += 1
  result = block.call
  $indent -= 1
  puts gap + "...\"#{desc}\" finished, returning: #{result}"
end

better_log ("outer block") do
   better_log ("some little block") do
     better_log ("teeny-tiny block") do
       "lots of love"
     end
     42
   end
   better_log "yet another block" do
     "I love Indian food!"
   end
   true
end
