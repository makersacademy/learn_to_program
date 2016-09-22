# your code here
# You’ll probably want to break each line up and put it in a hash, using the name as your key 
#and the date as your value. In other words: words: birth_dates['The King of Spain'] = 'Jan 5, 1938'

#[{:name=>"Christopher Alexander", :month_day=>"Oct 4", :year=>"1936"}, 
#{:name=>"Christopher Lambert", :month_day=>"Mar 29", :year=>"1957"},  etc.]
birth_dates=[]
file = File.open("names.txt", "r")
file.readlines.each{|person|
name,month_day,year = person.chomp.split(",")
name.strip!; month_day.strip!; year.strip!
    birth_dates << {name: name,month_day: month_day,year: year} 
}
file.close
month_day_get = ""
year_get = ""
puts "Enter a name."
name_get = gets.chomp
person = birth_dates.select {|person| person[:name]  == name_get }
month_day_get = person[0]["month_day".to_sym]
year_get = person[0][:year]

puts "Hi #{name_get}! You were born on #{month_day_get} in #{year_get}"

    
