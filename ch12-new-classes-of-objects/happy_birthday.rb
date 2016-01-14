def happy_birthday
	puts "What year were you born in?"
	y_ob = gets.chomp.to_i
	puts "What month?"
	m_ob = gets.chomp.to_i
	puts "What day of the month?"
	d_ob = gets.chomp.to_i

	bd = Time.local(y_ob, m_ob, d_ob)
	puts "So you were born: #{bd}"

	time = Time.new
	age = time.year - y_ob

	if time.month < m_ob
		age -= 1
	end

	if time.month == m_ob
		if d_ob < time.day 
			age -= 1
		end
	end
	puts "SPANK\n"*age
end

happy_birthday