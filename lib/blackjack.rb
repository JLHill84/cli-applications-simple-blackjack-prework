def welcome
  puts "Welcome to the Blackjack Table"
end
  
def deal_card
  return rand(1..11)
end

def display_card_total(cardTotal)
  puts "Your cards add up to #{cardTotal}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  userInput = gets
end

def end_game(int)
  puts "Sorry, you hit #{int}. Thanks for playing!"
end

def initial_round
  x = deal_card() + deal_card()
  display_card_total(x)
  return x
end

def hit? (int)
  input = ["h", "s"]

  prompt_user
  input = get_user_input

  until valid_inputs.include?(input)
    invalid_command
    prompt_user
    input = get_user_input
  end

  if input == "h"
    card_total += deal_card
  end
  card_total
end

def invalid_command
  puts 'Please enter a valid command.'
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
    
