def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  result = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  print display_card_total(sum)
  return sum
end
  
def hit?(num)
 prompt_user
 result = get_user_input
if result == 'h'
  return deal_card + num
else
return num
  end
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  
  card_total = 0
  card_total = initial_round
  until card_total >= 21
   card_total = hit?(card_total)
   display_card_total(card_total)
  end
end_game(card_total)
  
  
end
    
