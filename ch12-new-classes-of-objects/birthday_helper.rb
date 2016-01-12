Dir.chdir '/Users/Harry/code/project_files'

def bday
  f = File.open("bdays.txt")
  data = f.read.split("\n")
  data2 =[]
  i = 0
  data.each { |x|
    data2[i] = x.split(",")
    i += 1
  }
  store = Hash.new
  data2.each { |y,z|
    store[y] = z
  }
  puts "Whose bday?"
  #name = gets.chomp
  name = "tom kerridge"
  
  puts store
  s = store[name]
  puts s
end

bday