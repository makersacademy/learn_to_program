data = File.read('dates.txt')

hash = {}

months = {"Jan"=>1, "Feb"=>2, "Mar"=>3, "Apr"=>4, "May"=>5, "Jun"=>6, "Jul"=>7, "Aug"=>8, "Sep"=>9, "Oct"=>10, "Nov"=>11, "Dec"=>12}

data.each_line do |r|
    a = r.chomp
    a = a.split(",",2)
    hash[a[0]] = a[1]
end

puts "Enter a name"
name = gets.chomp

if hash.has_key?(name) == true
    date = hash[name]
    x = date.split(/[\s,]+/)
    year, month, day = x[3], x[1], x[2]
    month_i = months[month]
    today = Time.new
    dob = Time.local(year, month_i, day)
    age = (today - dob)/60/60/24/365
    puts "#{name} will be #{age.to_i} on #{day} #{month}."
else
    puts "Name not found"
end