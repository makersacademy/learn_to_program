


Dir.chdir '/Users/Office/Dropbox (Personal)/Development/Makers/chris_pine/chapter_9-14/learn_to_program/pictures'

pic_name = Dir['/Users/Office/Dropbox (Personal)/Development/Makers/*.{jpg,JPG}']

puts "What do you want to call this batch?"
batch_name = gets.chomp
puts ""
print "Downloading #{pic_name.length} files: "


pic_number = 1
pic_name.each do |name|
  print "."

  new_name =
  if pic_number < 10
    file_checker("#{batch_name}0#{pic_number}.jpg")
  else
    file_checker("#{batch_name}#{pic_number}.jpg")
  end

  File.rename(name,new_name)
  pic_number+=1
end

def file_checker(name)
  File.file?(name)
    if true
      puts "The batch name you entered already exists. Please choose a new one. If you want to stop the process please type 'Exit'"
      input = gets.chomp
      if input == 'Exit'
          Exit
        else
          batch_name=input
      end
      "#{batch_name}0#{pic_number}.jpg"
    else
      return name
    end
end

puts

puts "Done"

# your code here