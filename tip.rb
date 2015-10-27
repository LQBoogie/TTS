
#Emily Ring 

#Gets amount from user
print "Please enter the bill amount: "
bill_amount = gets.chomp.to_i

#method to calculate top amount 
def tip_amount( amount )
   amount * 0.2
end 

#method to add tip amount to total bill 
def total_with_grat( amount )
   amount + tip_amount( amount )
end 

#prints final amount 
puts sprintf("Your total bill is: $%.2f", total_with_grat( bill_amount ) )