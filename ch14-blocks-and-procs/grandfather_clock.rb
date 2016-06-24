def grandfather_clock &block

  (Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour).times {block.call}
  # your code here
end

grandfather_clock do
  puts "DONG"
end
