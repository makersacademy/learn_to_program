def clock some_block

current_hour = Time.new.hour
if current_hour == 0
current_hour = current_hour + 12
elsif current_hour > 12
current_hour = current_hour - 12
end

current_hour.to_i.times do
some_block.call
end

end 

dong = Proc.new do
	puts 'DONG!'
end
