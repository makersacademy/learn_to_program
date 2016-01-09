def grandfather_clock &block
  (Time.new.hour).times {block[]}
end

# grandfather_clock {puts "DONG!"}