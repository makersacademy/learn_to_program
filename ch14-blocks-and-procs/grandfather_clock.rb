def grandfather_clock &block
# Creates new method that accepts a block
  hour = (Time.new.hour + 11) % 12 + 1
# New Time object created and the hour method called on it to return the
# present hour value (i.e. 14 when I ran the code (return value is in 24hr)).
# Without more hour would = 14 and therefore cause the below line of code to
# execute the block 14 times, which would be wrong if we wanted to pass in a
# block that "DONGs" once for every hour passed at a given time. The "% 12 + 1"
# converts the 24 hr version to a 12 version, thereby fixing that issue.
  hour.times(&block)
# Calls the .times method on the hour object and passes in the block, which
# puts "DONG!" to the screen the number of times equal to the current hour.
end
