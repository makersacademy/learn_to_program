def birthday
  require 'Time'
  puts "What year were you born in?"
  year = gets.chomp
  puts "What month were you born?"
  month = gets.chomp
  puts "What day were you born?"
  day = gets.chomp

## figure out age

  birthday = Time.local(year,month,day)
  age = Time.new - birthday # age in secs

  age = age / 60 / 60 / 24 / 365


  puts "SPANK\n" * age.to_i
end

birthday
