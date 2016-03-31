MONTHS =  {
    "Jan" => 1, "Feb" => 2, "Mar" => 3, "Apr" => 4,
    "May" => 5, "Jun" => 6, "Jul" => 7, "Aug" => 8,
    "Sep" => 9, "Oct" => 10, "Nov" => 11, "Dec" => 12
}
filename = './ch12-new-classes-of-objects/names_and_birthdates.txt'

text = File.read filename
birth_dates = Hash.new

text.lines do |line|
    line.chomp!
    k,*v = line.split(',')
    v = v.join.slice(1..-1)
    birth_dates[k] = v
end

puts "What's your name?"
name = gets.chomp

if birth_dates.keys.include? name
    now = Time.new
    m,d,y = birth_dates[name].split
    
    if now.month < MONTHS[m]
        puts "Hey #{name}, your next birthday is on #{m} #{d} #{now.year}"
    elsif now.month == MONTHS[m]
        if now.day < d.to_i
            puts "Hey #{name}, your next birthday is on #{m} #{d} #{now.year}"
        end
    else
        puts "Hey #{name}, your next birthday is on #{m} #{d} #{now.year + 1}"
    end
else
    puts "Your name is not in the list"
end
