peoples_birthdays = {}
today = Time.now.strftime("%d/%m/%Y")

File.readlines('birthdays.txt').each do |line|
	arr = line.split(" ")
	peoples_birthdays[arr[0]] = arr[1].split("/")
end

puts "Which person's birthday do you want to find out?"

name = gets.chomp
birthday = peoples_birthdays[name].map! {|x| x.to_i}
today_arr = today.split("/").map! {|x| x.to_i}
age = today_arr[2] - birthday[2]

months = {
	1 => "January",
	2 => "February",
	3 => "March",
	4 => "April",
	5 => "May",
	6 => "June",
	7 => "July",
	8 => "August",
	9 => "September",
	10 => "October",
	11 => "November",
	12 => "December"
}


	if today_arr[1] < birthday[1] 
 		age -= 1 
 		puts "#{name} is #{age} and will be #{age +1} on the #{birthday[0]} of #{months[birthday[1]]}"
	elsif today_arr[1] == birthday[1]
		if today_arr[0] == birthday[0]
		 	puts "It is #{name}'s Birthday today. Remember to wish them Happy Birthday - they are #{age} years old today." 
		elsif today_arr[0] < birthday[0] 
			puts "#{name} is #{age} and will be #{age -1} on the #{birthday[0]} of this month, in #{birthday[0] - today_arr[0]} days"
		else
			puts "#{name} has just turned #{age} on the #{birthday[0]} of this month, #{today_arr[0] - birthday[0]} days ago"
		end
	elsif peoples_birthdays.has_key?(name) == false
		puts "You do not have #{name} in your diary"
	else
		puts "#{name} is #{age} and will be #{age} on the #{birthday[0]} of #{months[birthday[1]]}"
	end
