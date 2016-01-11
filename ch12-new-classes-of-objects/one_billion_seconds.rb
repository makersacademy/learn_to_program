birthdate = []
 
 puts "Please give me your birth date, to the second, in the following format: \"YYYY,MM,DD,HH,MM,SS\"?"
 
 birthDate = gets.chomp
 
 bd = birthDate.split(",")
 
 birthTime = Time.mktime(bd[0],bd[1],bd[2],bd[3],bd[4],bd[5])
 
 nowTime = Time.new
 
 secAge = nowTime - birthTime
 
 puts "You are #{secAge} seconds old. Congratulations!"
 
 oneBillion = birthTime + 10**9
 
 puts nowTime > oneBillion ? "You turned a billion seconds old on #{oneBillion}." : "You will turn a billion seconds old on #{oneBillion}."# your code here