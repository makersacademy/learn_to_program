def grandfather_clock
  time = Time.new.to_a
  hours = time[2]
  hours.times { yield }
end
