$nesting_depth = -1

def better_log desc, &block
  $nesting_depth+=1
  puts " "*$nesting_depth + "Beginning \"#{desc}\"..."
  puts " "*$nesting_depth + "...\"#{desc}\" finished, returning: #{block.call}"
  $nesting_depth -=1
end

better_log "Outer block" do
  better_log "some little block" do
      better_log "teeny-tiny block" do
        "lots of love"
      end
    42
  end
  better_log "yet another block" do
      "I love indian food!"
  end
false
end




# Better program logger. The output from that last logger was kind of hard
# to read, and it would just get worse the more you used it. It would be so
# much easier to read if it indented the lines in the inner blocks. So, you’ll
# need to keep track of how deeply nested you are every time the logger
# wants to write something. To do this, use a global variable, which is a
# variable you can see from anywhere in your code. To make a global variable,
# just precede your variable name with $, like so: $global, $nesting_depth,
# and $big_top_pee_wee. In the end, your logger should output code like this:
#
# Beginning "outer block"...
#   Beginning "some little block"...
#     Beginning "teeny-tiny block"...
#     ..."teeny-tiny block" finished, returning:
#     lots of love
#   ..."some little block" finished, returning:
#   42
#   Beginning "yet another block"...
#   ..."yet another block" finished, returning:
#   I love Indian food!
# ..."outer block" finished, returning:
# true
