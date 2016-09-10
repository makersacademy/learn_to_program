def birthday

    puts "What year were you born?"
    year= gets.chomp.to_i
    puts "month"
    month = gets.chomp.to_i
    puts "day"
    day = gets.chomp.to_i

   
    age = 1
    now = Time.new
    
    while  Time.local(year+age , month, day) <= now
    puts "SPANK"
    age = age+1 
    end
end

birthday
