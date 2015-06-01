
puts 'Table of Contents'.center(50)
puts
chap_num = 1
contents = [['Getting Started', 1], ['Numbers', 9], ['Letters', 13]]

contents.each do |chap|
  chap_title = chap[0]
  page = chap[1]
  left = 'Chapter ' + chap_num.to_s + ':  ' + chap_title
  right = 'page '.rjust(20) + (page.to_s).rjust(2)
  puts left.ljust(30) + right
  chap_num += 1
end
