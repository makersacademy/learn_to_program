puts 'What year were you born in?'
year = STDIN.gets.chomp
puts 'and what month were you born in (eg. 8 for Aug)?'
month = STDIN.gets.chomp
puts 'and which day of that month were you born in?'
day = STDIN.gets.chomp

user = Time.new(year, month, day)

def happy_bday user
	Time.now.to_i - user.to_i
end
