
Dir.chdir '/Users/seanhawkridge/Desktop/copies'

pic_names = Dir['/Users/seanhawkridge/Desktop/originals/**/*.{JPG,jpg}']

puts 'What would you like to call this batch?'

batch_name = gets.chomp

puts

print "Downloading #{pic_names.length} files: "

  pic_number = 1
  pic_names = pic_names.sort
  pic_names.each do |name|

    new_name = if pic_number < 10
    "#{batch_name}00#{pic_number}.jpg"
  elsif pic_number < 100
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
    end

  if File.exist?("/Users/seanhawkridge/Desktop/copies/#{new_name}")
  puts "#{new_name} already exists!"
  pic_number = pic_number + 1
  else
  File.rename name, new_name
  puts "#{name.split('/')[-1]} moved to #{new_name}"
  pic_number = pic_number + 1
  end
end
puts 
puts 'D O N E'
