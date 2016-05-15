def grandfather_clock &block
  (Time.new.hour == 12 ? 12 : Time.new.hour%12).times {block.call}
end