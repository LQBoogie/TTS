#Authors - Emily and Yesi

#initialize game variables 
game_array = ["rock", "paper", "scissors" ]
plays = 1
computer_score = 0
player_score = 0

#starts game 
puts "Let's play Rock. Paper Scissors! The best of five wins!"
print "Please type 'Rock' 'Paper' or 'Scissors' to start: "
player_choice = gets.chomp!.downcase
computer_choice = game_array.sample

#Loop of all game plays
while ( plays <= 5 )
   puts "The computer chose #{computer_choice}"

   #When play selects rock
   if player_choice == "rock"
      if computer_choice == "rock"
         puts "Tie. No points."
      elsif computer_choice == "paper"
         puts "Paper beats rock. You LOSE Round #{plays}!"
         computer_score += 1
         plays += 1
      else
         puts "Rock beats Scissors! You WIN Round #{plays}!"
         player_score += 1
         plays += 1
      end

   #When player selects scissors 
   elsif player_choice == "paper"
      if computer_choice == "rock"
         puts "Paper beats rock. You WIN Round #{plays}!"
         player_score += 1
         plays += 1
      elsif computer_choice == "paper"
         puts "Tie. No points."
      else
         puts "Rock beats paper. You LOSE Round #{plays}!"
         computer_score += 1
         plays += 1
      end

   #When player selects scissors
   elsif player_choice == "scissors"
      if computer_choice == "rock"
         puts "Rock beats scissors. You LOSE Round #{plays}!"
         computer_score += 1
         plays += 1
      elsif computer_choice == "paper"
         puts "Scissors beat paper. You WIN Round #{plays}!"
         player_score += 1
         plays += 1
      else
         puts "Tie. No points."
      end

   else
      puts "Sorry #{player_choice} is not a valid option."
   end

   if plays < 6
      puts " "
      print "Round #{plays} Please choose again: "
      player_choice = gets.chomp!.downcase
      computer_choice = game_array.sample
   end 
end 

#final scores
puts " "
puts "Final scores"
puts "You:#{player_score}"
puts "Computer:#{computer_score}"
if computer_score > player_score
   puts "Better luck next time"
else
   puts "You won because you are awesome!"
end 
puts " "

