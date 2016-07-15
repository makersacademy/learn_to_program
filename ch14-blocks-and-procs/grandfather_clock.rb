def grandfather_clock &block
  # your code 
  current_hour = Time.new.hour
  current_hour +=1 # added 1 to make it output correct number of dongs
  if current_hour >= 13
    current_hour = current_hour - 12
   elsif current_hour == 0
     current_hour = 12       
  end
  current_hour.times do
      block.call
   end 
   puts "Dont count them that was " + $dong_count.to_s + " Dong(s)"
end #method
$dong_count = 0
grandfather_clock do 
    puts 'Dong' 
    $dong_count = $dong_count + 1
end    