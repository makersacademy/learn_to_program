hash=Hash.new
months = {"Jan" => 1, "Feb" => 2, "Mar" => 3, "Apr" => 4, "May" => 5, "Jun" => 6,
  "Jul" => 7, "Aug" => 8, "Sep" => 9, "Oct" => 10, "Nov" => 11, "Dec" => 12}

File.open 'birthdays.txt', 'r' do |f|
  f.each_line do |line|
    array = line.split(',')
    name = array[0].strip
    date = array[1..3].map {|i| i.strip}
    puts name
    puts date
    hash.store(name.chomp, date)
  end
end
puts hash

response = gets.chomp

while response.chomp != ''
  if hash.has_key?(response)
    birthday = hash[response]
    year = birthday[1].to_i
    month, day = birthday[0].split(' ')
    birth = Time.local(year, months[month].to_i, day)
    age = (Time.new - birth)/60/60/24/365
    puts "#{response} will be turning #{age.ceil} on the #{day} of #{month}. "
    response = gets.chomp
  end
end
