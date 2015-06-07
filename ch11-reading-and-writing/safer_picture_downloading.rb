Dir.chdir 'Files'

pic_names = Dir['../Camera/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files: "

pic_number = 1

pic_names.each do |name|
  print '.'
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
    else
    "#{batch_name}#{pic_number}.jpg"
    end
  if File.exist?(new_name)
    puts "\nError, a file with the name #{new_name} already exists. Program aborted. Files moved:  #{pic_number - 1} of #{pic_names.length}."
    exit
  end
  File.rename name, new_name
  pic_number += 1
end

puts 'Done'