
def grandfather_clock (&time)
  x = Time.now.hour
  if x > 12
      x -= 12
  end

  x.times{time.call}
end

grandfather_clock{puts "DONG"}

