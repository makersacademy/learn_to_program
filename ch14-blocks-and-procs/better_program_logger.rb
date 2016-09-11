$logger_depth = 0

def better_log desc, &block
  prefix = ' '*$logger_depth
      puts "#{prefix}Beginning \"#{desc}\"..."

      $logger_depth += 1
      result = block.call
      $logger_depth -= 1

      puts "#{prefix}...\"#{desc}\" finished, returning: #{result.to_s}"
end

better_log "outer block" do
  better_log "little block," do
    5
  end

  better_log "yet another " do
    "I like thai food"
  end
end
