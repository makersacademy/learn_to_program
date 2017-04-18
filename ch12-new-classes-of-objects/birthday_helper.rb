require 'yaml'
filenm = File.new("birthday_helper.txt", "w")
birthday_data = {
	"Christopher Alexander" =>  "1936 10 4",
	"Christopher Lambert" =>     "1957 3 29",
	"Christopher Lee" => "1922 5 27",
	"Christopher Lloyd" => "1938 10 22",
	"Christopher Pine" => "1976 5 3",
	"Christopher Plummer" => "1927 12 13",
	"Christopher Walken" => "1943 31 3",
	"The King of Spain" => "1938 1 5"
}
birthday_d = birthday_data.to_yaml
File.open filenm, 'w' do |f|
	f.write birthday_d
end
# myfile = File.new(filenm, "w+")
puts "Please enter a name"
name = "The King of Spain"

File.open filenm

read_string = File.read filenm
read_hash = YAML::load read_string

next_birthday = []
now = Time.now

if read_hash.has_key?(name) 
	value = read_hash[name] 
	val = value.split(" ")
	age = now.year - val[0].to_i
	age = age+1
	if ( val[1].to_i > now.month || (val[1].to_i == now.month && val[2].to_i > now.day))
			 age = age-1
			 next_birthday << now.year << " " << val[1] << " " << val[2]
	else
		year = now.year + 1
		next_birthday << year << " " << val[1] << " " << val[2]
		age = age
	end
	"#{name} will be #{age} on his coming birthday which will be on #{next_birthday.join()}"
else
	 "Sorry the name is not present in the list"
end

