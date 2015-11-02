#Inventory from Laquana and Emily

#Make an initial inventory and print out all items
puts "Welcome to Emily and Laquan's inventory!"
puts "Here is a list of items in the inventory and their quantitiy:"

#TODO: Create Hash of items in inventory
#TODO: Create a method that prints out the Hash.  
#TODO: Print out hash (Call the method you create)

#Method that gets commands from user 
def userinput
   #give user command options
   puts
   puts "Please choose a command:"
   puts "Type 'add' to add item to the inventory"
   puts "Type 'update' to update item in the invetory"
   puts "Type 'print' to view a list of all items in the inventory"
   puts "Type 'quit' to leave the program"

   #get command from user
   print "please enter command: "
   user_selection = gets.chomp.downcase
end


#Calls userinput method.  Asks user what they want next
user_selection = userinput


#While loop that responds to user commands
while user_selection != "quit"

   #Add new item to inventory
   if user_selection == "add"
      #TODO: ask user for item and amount

      #TODO: add item and amount to Hash

      #Ask user for new selection
      user_selection = userinput

   #Update current item in inventory
   elsif user_selection == "update"
      #TODO: Ak user what item they want to update and amount they want to update

      #TODO: Update Hash amount based on user 

      #Ask user for new selection
      user_selection = userinput

   #User enters 
   elsif user_selection == "update"
      #TODO: Print out hash (Call the method you created up above)

      #Ask user for new selection
      user_selection = userinput

   #We don't have a command for anything else
   else
      #Tells user they selected an invaled command
      puts
      puts "Sorry.  This is not a valid command"

      #Ask user for new input
      user_selection = userinput
   end
end

puts
puts "Thanks for stopping by! Come again soon!"
puts