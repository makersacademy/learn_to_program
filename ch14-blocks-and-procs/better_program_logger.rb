$0 = " "
$i = 0


def better_log desc, &block
  # your code here
  puts $0 * $i + "Beginning #{desc.inspect}..."
  $i += 1
  y = yield
  $i -= 1
  puts $0 * $i + "...#{desc.inspect} finished, returning: #{y}"
end

better_log "outer block" do
  better_log "some little block" do
    better_log "teeny-tiny block" do
      'lOtS oF lOVe'.downcase
    end
    7 * 3 * 2
    better_log "yet another block" do
      '!doof naidnI evol I'.reverse
    end
    '0' == "0"
  end
end
