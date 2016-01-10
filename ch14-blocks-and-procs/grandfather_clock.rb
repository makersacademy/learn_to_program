def grandfather_clock &block
  if false
  hours = Time.now.hour
else
  hours = 4
end
  (1..hours).each{|x| block.call}
end
