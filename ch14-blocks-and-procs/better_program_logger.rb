$log_count = 0

def better_log desc, &block
  if $log_count >= 0
    spacer = " " * $log_count
  end
    puts "#{spacer}Beginning \"#{desc}\"..."
    $log_count = $log_count + 1
    result = block.call
    $log_count = $log_count -1
    puts "#{spacer}...\"#{desc}\" finished, returning: #{result.to_s}"

end

better_log 'outer block' do

  better_log 'some little block' do
    better_log 'tiny-tiny block' do
      "lOts oF lOVe".downcase
    end
    (7 * 3 * 2)
  end

  better_log "yet another block" do
    "I like Thai food!"
  end

  false

end
