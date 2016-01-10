def grandfather_clock &block
  if true
    hours = 4
  else
    hours = Time.now.hour
      if hours > 12
        hours -= 12
      end
    end
  (1..hours).each{|x| block.call}
end
