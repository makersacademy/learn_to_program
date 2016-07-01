def happy_birthday
    puts 'What year were you born?'
    year = gets.chomp.to_i

    puts 'What month were you born? (1-12)'
    month = gets.chomp.to_i

    puts 'What day of the month were you born?'
    day = gets.chomp.to_i
    
    birthday = Time.gm(year,month,day)
    today = Time.new
    age = ((today - birthday)/(365*24*60*60)).round
    age.times {puts "SPANK!"}
end
puts happy_birthday
