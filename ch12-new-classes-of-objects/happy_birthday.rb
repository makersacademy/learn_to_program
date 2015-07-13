require 'Time'

def question
  timeArray = ["year", "month", "day"]
  responses = Array.new
  timeArray.each_index do |i|
    puts "which #{timeArray[i]} were you born in"
    responses.push(gets.chomp)
  end
  y=responses[0]
  m=responses[1]
  d=responses[2]
  date=Time.new(y, m, d)
end

def makeSpanks date
  seconds_since=Time.new-date
  fullYears=(seconds_since/(60*60*24*365.25)).to_int
  counter=1
  fullYears.times do
    puts "Spank (#{counter})"
    counter+=1
  end
end

birthday=question
puts "so you were born on #{birthday.strftime("%B")} #{birthday.day}, #{birthday.year}"
makeSpanks birthday