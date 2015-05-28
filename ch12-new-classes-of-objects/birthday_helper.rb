require 'yaml'
filename="Birthdays.txt"
#Load File
  def yaml_load filename
    yaml_array=File.read filename
  end

read_array=YAML::load yaml_load filename


def search name, array
n=0
  while true
    if array[n][0]==name
    month=array[n][1]
    day=array[n][2]        
    year=array[n][3]
    return Time.local(year,month,day)
    else
      n+=1
    end
  end
end


puts "Enter a name: "
name=gets.chomp
birthday=search(name,read_array)




def next_birthday birthday 
  if birthday.month > Time.now.month
  	return Time.local(Time.now.year,birthday.month, birthday.day)  
  elsif birthday.month == Time.now.month
  	if birthday.day > Time.day
  		return Time.local(Time.now.year, birthday.month, birthday.day)
  	elsif birthday.day < Time.day
  		return Time.local(Time.now.year+1, Time.now.month, birthday.day)
  	else
  		return "Its your Birthday Today"
  	end
  else
  	return Time.local(Time.now.year+1, birthday.month, birthday.day)
  end
end

 

special_day=next_birthday(birthday)

age=Time.now.year-birthday.year

puts" Next Birthday will be: "
puts(next_birthday(birthday))
puts "At the age of: "
puts age