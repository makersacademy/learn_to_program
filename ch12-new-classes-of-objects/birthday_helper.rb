def birthday file
  string = open(file).read
  hash = {}
  months = {"Jan" => 1, "Feb" => 2, "Mar" => 3, "Apr" => 4, "May" => 5, "Jun" => 6, "Jul" => 7, "Aug" => 8, "Sep" => 9, "Oct" => 10, "Nov" => 11, "Dec" => 12}
  string.each_line do |x|
    info = x.chomp.split ","
    month = months[info[1][1,3]]
    day = info[1][-2..-1].to_i
    hash[info[0]] = Time.local(info[2], month, day)
  end
  puts "Please input a name"
  name = gets.chomp
  puts "#{name} has their next birthday on #{months.key(hash[name].month)} #{hash[name].day}"
  years = ((Time.new - hash[name]) / 60 / 60 / 24 / 365).to_i + 1
  puts "They will be #{years} years old!  Hurray!"
end

#birthday "/Users/malinnaleach/Programs/birthdays.txt"
