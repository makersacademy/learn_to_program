def findBirthday name
	birthdays = Hash.new
	births = File.open('births.txt').read
	births.each_line do |line|
		person = line.split(',')
		person[2] = person[2].gsub!("\n", '') 
		birthdays[person[0]] = person[1] , person[2]
	end
	year = birthdays[name][1][1..birthdays[name][1].length]
	month = birthdays[name][0][1..birthdays[name][0].length].split(' ')[0]
	day = birthdays[name][0][1..birthdays[name][0].length].split(' ')[1]
	dob = Time.new(year, month, day)
	now = Time.now
	nextAge = now.year - dob.year - (now.strftime('%m%d') < dob.strftime('%m%d') ? 1 : 0)
	"#{name} will turn #{nextAge} on #{month} #{day}"
end


puts findBirthday('Christopher Walken')
