$logger_depth = 0

def better_log desc, &block
  prefix = " "*$logger_depth
  puts prefix + "Beginning #{desc.inspect}..."
  $logger_depth += 1
  result = block.call
  $logger_depth -= 1
  puts prefix + "...#{desc.inspect} finished, returning: #{result}."
end

better_log "outer block" do
  better_log "some little block" do
    better_log "teeny-tiny block" do
      "l0ts of l0Ve".downcase
    end
    7 * 3 * 2
  end

  better_log "yet another block" do
    "!doof naidnI evol I".reverse
  end
  "0" == "0"
end