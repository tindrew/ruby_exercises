#Get My Number

puts "Welcome to 'Get My Number!'"
# get the players name, and greet them.
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, #{name}!"

# Store a random number for player to guess
puts "I've got a random number between 1 and 100."
puts "can you guess it?"
random_number = rand(100) + 1

# Track how many guesses the player has made 
num_guesses = 0

# Tracl whether a player has guessed correctly
guessed_it = false

until num_guesses == 10 || guessed_it

    puts "You've got #{10 - num_guesses} guesses left."
    print "Make a guess: "
    guess = gets.to_i

    num_guesses += 1
    #Compare the guess to random number
    #print appropriate message
    if guess < random_number
        puts "Oops, your guess was LOW."
    elsif guess > random_number
        puts "Oops, your guess was too HIGH"
    elsif guess == random_number
        puts "Good job, #{name}!"
        puts "YOu guessed my number in #{num_guesses} guesses!"
        guessed_it = true;
     end
end

    #If player ran out of turns, tell them what the number was
    unless guessed_it
        puts "Sorry, you didn't guess my number. it was #{random_number}..."
    end
