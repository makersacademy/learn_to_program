require './english_number'


def beer(bottles=0)

until bottles <0
        if bottles >1
        puts "#{english_number(bottles).capitalize} bottles of beer on the wall,\n#{english_number(bottles)} bottles of beer,\nTake one down, pass it around,\n#{english_number(bottles-1)} bottle of beer on the wall."
        elsif bottles ==1
          puts "#{english_number(bottles.capitalize)} bottle of beer on the wall,\n#{english_number(bottles)} bottle of beer,\nTake one down, pass it around,\n#{english_number(bottles-1)} bottles of beer on the wall."
        else
          puts "#{english_number(bottles).capitalize} bottles of beer on the wall,\n#{english_number(bottles)} bottles of beer,\nTake one down, pass it around,\n#{english_number(bottles)} bottles of beer on the wall."
        end
        bottles -= 1

  end
end
beer