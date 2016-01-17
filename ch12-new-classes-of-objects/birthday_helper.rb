puts "What year were you born (in YYYY format, please)?"
 
 bd = [gets.chomp.to_i]
 
 puts "What month were you born (in MM format, please)?"
 
 bd << gets.chomp.to_i
 
 puts "What day of the month were you born (in DD format, please)?"
 
 bd << gets.chomp.to_i
 
 dob = Time.mktime(bd[0],bd[1],bd[2])
 
 time = Time.new
 
 ys = 60 * 60 * 24 * 365.25
 
 spankNum = 0
 
 while time > dob do
 
    time = time - ys
 
    spankNum += 1 if time > dob
 
 end
 
 spanks = 0
 
 puts "You are #{spankNum} years old!  Time for a Spanking!"
 
 until spanks > spankNum do
 
    puts "SPANK!"
 
    spanks += 1
 
 end