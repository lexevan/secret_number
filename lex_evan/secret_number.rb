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

# Victory message #

victory_msg = "You win #{player_name}. The game is over. Let's play again soon!"

# game #

puts "You have 3 attempts to guess the secret number. What is your first guess?"
guess_one = gets.strip
guess_one = guess_one.to_i

puts victory_msg if guess_one == secret_number
puts "Too high. Guess again." if guess_one > secret_number
puts "Too low. Guess again." if guess_one < secret_number

if guess_one != secret_number
  puts "You have 2 more attempts to guess the secret number. What is your second guess?"
  guess_two = gets.strip
  guess_two = guess_two.to_i

  puts victory_msg if guess_two == secret_number
  puts "Too high. Guess again." if guess_two > secret_number
  puts "Too low. Guess again." if guess_two < secret_number
end

if guess_one || guess_two != secret_number
  puts "This is your last attempt to guess the secret number. What is your third and final guess?"
  guess_three = gets.strip
  guess_three = guess_three.to_i

  puts victory_msg if guess_three == secret_number
  puts "Sorry #{player_name}, you lost this game. The secret number was #{secret_number}. Let's play again sometime." if guess_three != secret_number
end



