# This programme tells you, given your birthday,
# when you will turn (or have turned) one bilion seconds old!

def one_billion_second bday
  one_bil_sec = bday + 1 * 10 ** 9
  if Time.new > one_bil_sec
    puts "When you have turned one billion seconds old: #{one_bil_sec}"
  else
    puts "When you will turn one billion seconds old: #{one_bil_sec}"
  end
end

puts "Please enter your birthday (DD/MM/YYYY)"
# creates an array ["day", "month", "year"]
answer = gets.chomp.split("/")
bday = Time.local(answer[-1], answer[1], answer[0])

one_billion_second bday
