puts "What year were you born in?"
year = gets.chomp.to_i

puts "What month were you born in? (1 - 12)"
month = gets.chomp.to_i

puts "What day were you born on?"
day = gets.chomp.to_i

current_time = Time.new
birth_time = Time.gm(year, month, day)

current_time_year = current_time.year
current_time_month = current_time.month
current_time_day = current_time.day

if current_time_month > month
  spank_times = current_time_year - year
  spank_times.times {puts "SPANK!"}
elsif current_time_month == month
  if current_time_day > day
    spank_times = current_time_year - year
    spank_times.times {puts "SPANK!"}
  elsif current_time_day == day
    puts "Happy Birthday!"
    spank_times = current_time_year - year
    spank_times.times {puts "SPANK!"}    
  else
    spank_times = current_time_year - year -1
    spank_times.times {puts "SPANK!"}
  end
else
  spank_times = current_time_year - year -1
  spank_times.times {puts "SPANK!"}
end
