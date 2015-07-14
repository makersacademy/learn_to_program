def clock some_proc

#convert hours to 12 hour format
current_hour = Time.new.hour
if current_hour == 0
current_hour = current_hour + 12
elsif current_hour > 12
current_hour = current_hour - 12
end

#call the proc the number of hours passed
current_hour.to_i.times do
some_proc.call
end

end

# Dong proc
dong_proc = Proc.new do
puts 'DONG!'
end

clock dong_proc
