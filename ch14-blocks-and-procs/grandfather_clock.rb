def grandfather_clock &block
  hours = Time.now.hour
  if hours > 12
    hours -= 12
  end
  (1..hours).each{|x| block.call}
end
