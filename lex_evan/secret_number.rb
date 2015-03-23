# Intro #

puts "Welcome to the Secret Number game! Created by Lex Evan"

puts "What is your name?"

player_name = gets.strip

puts "Hi #{player_name}" + ", here are the rules of Secret Number:"
puts "Rule #1. You must guess a secret number between 1 and 10."
puts "Rule #2. You have only 3 attemtps to guess the number."
puts "Let's begin."

# Define secret number #

secret_number = rand(10)

# messages #

victory_msg = "You win #{player_name}. The game is over. Let's play again soon!"

lose_msg = "Game over. You lose. Let's play again sometime."

# game #

attempts = 3

while attempts > 0 
  puts "You have #{attempts} attempts remaining. Please enter your guess."
  user_guess = gets.strip.to_i
  if user_guess == secret_number
    puts "You guessed it."
  elsif user_guess < secret_number
    puts "Too low. Guess again."
  elsif user_guess > secret_number
    puts "Too high. Guess again."
  end
  attempts -= 1
end

if user_guess == secret_number
  puts victory_msg
else
  puts lose_msg
end