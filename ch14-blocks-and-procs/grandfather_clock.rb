def grandfather_clock &block

  hour = (Time.new.hour + 11) % 12 + 1
  hour.times {block.call}

end

grandfather_clock do 
	puts "Dong!"
end


