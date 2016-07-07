puts "Enter your birthday in the form dd-mm-yyyy"
input=gets.chomp

arr=input.split("-")
born=Date.new(arr[2],arr[1],arr[0])
age=(Date.today.mjd - born.mjd)/365

age.times {Puts "Happy Birthday!"}

