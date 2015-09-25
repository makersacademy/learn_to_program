def grandfather_clock &block
  ## rspec test insists on using the 'hour' method, so my solution = binned
  # hour = Time.new.strftime('%I').to_i
  hour = Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour
  hour.times(&block)
end

grandfather_clock { puts 'DONG!' }

  