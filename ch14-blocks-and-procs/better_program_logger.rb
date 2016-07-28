$l_depth = 0

def better_log desc, &block
  tab = ' ' * $l_depth
  puts "#{tab}Beginning \"#{desc}\"..."
  $l_depth += 1 #add 1 to increase the tab space
  target_v = block[] #call the received block
  $l_depth -= 1 #deduct 1 to shorten the tab space
  puts "#{tab}...\"#{desc}\" finished, returning: #{target_v.to_s}"
end

better_log("outer block") do
  better_log("some little block") do
    better_log("teeny-tiny block") { 'lOtS oF LOVE'.downcase }
    7 * 3 * 2
  end

  better_log("yet another block") { "I love Indian food!" }

  true
end
