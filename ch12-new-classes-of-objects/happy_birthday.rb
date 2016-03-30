# forgot to do the gets.chomp and thought they would just input directly
puts 'Hey, when were you born? (Please use YYYYMMDD format.)'
birthday = gets.chomp

def age(birthday)
  now = Time.now.utc.to_date
  now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
end
age(birthday).times{puts "SPANK!"}
