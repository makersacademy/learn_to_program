require 'date'
def born_second
  beginning_of_time = Time.gm(1970, 1, 1)
  birth_time = Time.gm(1988, 12, 7)
  time_now = Time.new

  second_when_born = birth_time - beginning_of_time
  puts "I was born #{second_when_born.to_i} seconds after the beginning of time."

  number_seconds_old = time_now - birth_time
  puts "I am #{number_seconds_old.to_i} seconds old."

  if number_seconds_old > 1000000000
    puts "I am more than 1 billion seconds old."
  else
    puts "There are #{1000000000 - birth_time.to_i} seconds until I turn 1 billion seconds old."
    turn_billion_seconds_old = Time.at(birth_time.to_i + 1000000000).to_datetime
    puts "I will turn 1 billion seconds old on #{turn_billion_seconds_old}."
  end
end
