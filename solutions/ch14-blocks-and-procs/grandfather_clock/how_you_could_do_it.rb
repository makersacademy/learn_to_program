def grandfather_clock &block
  hr = Times.new.hour
  
  if (hr > 12)
    hr = hr%12
  end

  hr.times do 
    block.call
  end


end

grandfather_clock do
  puts 'DONG!'
end
