
def grandfather_clock (&time)
 x = Time.new.hour
  if x > 12
      x -= 12
  end

  (x+1).times{time.call}
end

grandfather_clock{puts "DONG!"}

