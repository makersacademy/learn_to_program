class OrangeTree
    def initialize
      @orange=0
      @height=0
      @years_old=0
      puts "You have planted an orange tree."
    end

    def pick_an_orange
      if @oranges>0
        @oranges=@oranges-1
        puts "That was gooooood. There are #{@oranges} left."
      else
        puts "There are no oranges to pick"
      end
    end

    def height
      puts "Your tree is #{@height} meters tall."
    end

    def count_the_oranges
      puts "There are #{@oranges} oranges."
    end

    def one_year_passes
      if @years_old < 50 #We're not very good at looking after our tree
        @oranges=0 #last years fall off
        @height=Math.log(@years_old+1).round(2)#assume that log is a good approximation for tree growth (pun not intended)
        if @years_old>3
          @oranges=rand(40..100*Math.log(@years_old).to_i)#Assume random variation, but upwards trend with years
        end
        @years_old=@years_old+1 #ages one year
      else
        puts "Oh no, your tree is dead"
        exit
      end
    end
end
