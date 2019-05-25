def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  cards = rand 1..11
end

def display_card_total(card)
  # code #display_card_total here
  puts "Your cards add up to #{card}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  choice= gets.chomp
end

def end_game(value)
  # code #end_game here
  apology = "Sorry, you hit #{value}. Thanks for playing!"
  
  puts apology
end

def initial_round
  # code #initial_round here
   
  num1 = deal_card
  num2 = deal_card
  
  puts " Your cards add up to #{num1+num2}"
  
  num1+num2
end

def hit?(number)
  # code hit? here
  prompt_user
  action = get_user_input
  
  if action == "h"
    deal_card
  elsif action =="s" 
    display_card_total
  else
    invalid_command
    hit?
  end

end

def invalid_command
  # code invalid_command here
  puts "Please enter 'h' or 's'"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  hit?
  display_card_total
  end_game
end
    
