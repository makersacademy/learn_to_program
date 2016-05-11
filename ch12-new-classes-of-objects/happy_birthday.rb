# your code here
def happy_birthday

puts "when were you born yyyy,mm,dd?"
birth = gets.chomp.split(',')
year = birth[0].to_i
month = birth[1].to_i
day = birth[2].to_i
years_in_secs = Time.new - Time.local(year,birth,day)
total = (years_in_secs / 31557600).to_i
total.times {|x| print "SPANK!"}
end
