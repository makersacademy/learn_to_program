class BirthSpank

  def whatever 
    today_date = Date.today
    number_of_times = (today_date - birth_date).to_i / 365
    number_of_times.times { puts "SPANK" }
  end

  def birth_date 
    puts "When where you born?"
    puts " Give me the year."
    year = gets.chomp.to_i
    puts " Give me the month."
    month = gets.chomp.to_i
    puts " Give me the day."
    day = gets.chomp.to_i
  
    Date.new( year, month, day )
  end

end