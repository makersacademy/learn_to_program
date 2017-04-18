#Looks @ File and Returns Peoples Next B'days!!!
current_year = Time.new.year
birthday = ""
puts "Who's birth date do you wish to see?"
response = gets.chomp! 
findfile = Dir['/Users/anthonyepstein/Desktop/test.txt']
Dir.chdir '/Users/anthonyepstein/Desktop/'
filename = 'test.txt'
File.open filename do |f|
f.each_line do |x|
    birthday << x.split(",")[1] if (x[response])
    end
end
year_check = ("#{birthday}" + " #{current_year}").split(" ")
m = year_check[0]
d = year_check[1] 
y = year_check[2] 
time_check = Time.gm(y, m, d) 
if time_check - Time.new >= 1
    print "#{birthday}" + " #{current_year}"
else 
    print "#{birthday}" + " #{current_year + 1}"
end