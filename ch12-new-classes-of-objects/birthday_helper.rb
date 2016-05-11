require 'yaml'
filename = File.new("birthday_helper.txt", "w")
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
File.open filename, 'w' do |f|
	f.write birthday_d
end
puts "Please enter a name"
name = gets.chomp

if (File.exist?(name))
    return "Yo"
		
else
	return "No name found"
end