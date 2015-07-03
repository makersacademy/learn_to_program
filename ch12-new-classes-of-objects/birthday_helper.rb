birthdays=File.read './birthdays.txt'

def loadBirthdays file
  dataHash=Hash.new
  file.each_line {|line|
       (name, date)=line.chomp.split(',')
       dataHash[name] = date}
  dataHash
end

def askQuestion hash
  puts "Whose birthday would you like?"
  search=gets.chomp
  if hash[search]!=nil
    response=hash[search]
    puts "#{search}'s birthday is on #{response}"
  elsif search=='n'
    puts "Ok, closing down now!"
    exit
  else
    puts "\nSorry, that name isn't in the database, please try again or enter \"n\" to quit the program"
    askQuestion hash
  end
end

def main file
  dataHash=loadBirthdays file
  askQuestion dataHash
end

main birthdays