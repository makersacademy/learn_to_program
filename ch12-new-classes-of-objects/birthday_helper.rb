require 'date'
birth_dates=[]
file = File.open("names.txt", "r")
file.readlines.each{|person|
name,month_day,year = person.chomp.split(",")
if name.nil?
    puts "Error: Blank lines in the file." 
    exit
end    
name.strip!; month_day.strip!; year.strip!
    birth_dates << {name: name,month_day: month_day,year: year} 
}
file.close
month_day_get = ""
year_get = ""
puts "Enter a name."
name_get = gets.chomp
person = birth_dates.select {|person| person[:name]  == name_get }
if person == []
    puts "Error: That person does not exist in the file." 
    exit
end  
month_day_get = person[0]["month_day".to_sym]
year_get = person[0][:year].to_i
month_get = month_day_get[0..2]
day_get = month_day_get.delete("^0-9")  
year_now = Time.now.year
puts year_now
date_now = Time.now
if date_now > Time.new(year_now,month_get,day_get)
    year_now+=1
end    
puts "Hi #{name_get}! You were born on #{month_day_get} in #{year_get}."
puts "Your next birthday is on #{day_get} #{month_get} in #{year_now}."
puts "On your next birthday you will be #{year_now-year_get} years old."

#[{:name=>"Christopher Alexander", :month_day=>"Oct 4", :year=>"1936"}, 
#{:name=>"Christopher Lambert", :month_day=>"Mar 29", :year=>"1957"},  etc.]    
