require_relative "fizz_buzz"

puts fizz_buzz(5)
diff = ""
rounds = 0
while true do
    puts "Easy or hard or quit?"
    diff = gets.chomp.downcase
    if diff == "quit"
        exit(0)
    end
    if (diff == "easy" || diff == "hard")
        break
    end
end

puts "You have chosen #{diff}, here are the rules:"
puts diff == "easy" ? "Numbers divisible by 3 are replaced by 'fizz', \nnumbers divisible by 5 by buzz, \nand numbers divisible by both by 'fizz buzz'" :
"Numbers divisible by, or containing a, 3 are replaced by 'fizz',\nNumbers divisible by, or containing a, 5 are replaced by 'buzz'\nNumbers containing or being divisible by both are replaced by 'fizz buzz'"
puts "First I say a number, then you say the next, then I, and so on. We start at 1\nIf you make it to the end, you win!"
gets

while true
    puts "How many numbers do you want to play? (you can still quit if you want)"
    rounds = gets.chomp.downcase
    if rounds == "quit"
        exit(0)
    end
    rounds = rounds.to_i
    if rounds > 0
        break
    end
end

puts "Ok, lets play #{rounds} #{diff} rounds!"
puts "You will have 4 seconds to enter the correct number!"
puts "Press enter when ready"
gets

curround = 1
while true #rounds
    if diff == "hard"
        if curround%2==0
            time = Time.new
            user = gets.chomp
            if Time.new-time > 4.0
                puts "Too slow, you took #{Time.new-time} seconds to answer"
                exit(0)
            end#check if user was too slow
            if user != fizz_buzz_hard(curround).to_s
                puts "Sorry, the correct input was #{fizz_buzz_hard(curround)}"
                exit(0)
            end#check if user got it right
        end#user's turn

        if curround%2==1
            puts "\e[32m#{fizz_buzz_hard(curround)}\e[0m"
        end #comp
        curround +=1
        if curround > rounds
            puts "It seems you made it through all #{rounds} rounds, congratulations on beating #{diff} mode!"
            exit(0)
        end #round check
    end #hard
    if diff == "easy"
        if curround%2==0
            time = Time.new
            user = gets.chomp
            if Time.new-time > 4.0
                puts "Too slow, you took #{Time.new-time} seconds to answer"
                exit(0)
            end#check if user was too slow
            if user != fizz_buzz(curround).to_s
                puts "Sorry, the correct input was #{fizz_buzz_hard(curround)}"
                exit(0)
            end#check if user got it right
        end#user's turn

        if curround%2==1
            puts "\e[32m#{fizz_buzz(curround)}\e[0m"
        end #comp
        curround +=1
        if curround > rounds
            puts "It seems you made it through all #{rounds} rounds, congratulations on beating #{diff} mode!"
            exit(0)
        end #round check
    end #easy
end#while true rounds
