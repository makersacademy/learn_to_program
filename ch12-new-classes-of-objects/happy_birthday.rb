puts "in which year were you born?"
byear = gets.chomp
age = Time.now.year - byear.to_i
age.times {|n| puts "SPANK!"}
