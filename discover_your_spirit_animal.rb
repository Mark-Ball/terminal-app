require_relative "./spirit_animal_methods.rb"
require "colorize"
require "artii"

# initialising variables
aggressiveness = 0
independence = 0

options_handler

# welcome message
print_in_ascii("Welcome")
puts("to " + "Discover Your Spirit Animal".colorize(:red) + ". This application will help you discover what animal spirit lies within.\n\nWhen presented with a list of choices, please type the " + "number".colorize(:magenta) + " corresponding to the choice and press enter.")

# question 1
print_in_ascii("Question 1")
loop do
    puts(get_scenarios[0])
    response = gets.chomp
    if response.to_i == 1
        aggressiveness += 1
        break
    elsif response.to_i == 2
        break
    elsif response.to_i == 3
        independence += 1
        break
    elsif response == "exit"
        exit
    else
        invalid_response(response)
    end
end

# question 2
print_in_ascii("Question 2")
loop do
    puts(get_scenarios[1])
    response = gets.chomp
    if response.to_i == 1
        independence += 1
        break
    elsif response.to_i == 2
        independence -= 1
        break
    elsif response == "exit"
        exit
    else
        invalid_response(response)
    end
end

# question 3
print_in_ascii("Question 3")
loop do
    puts(get_scenarios[2])
    response = gets.chomp
    if response.to_i == 1
        break
    elsif response.to_i == 2
        aggressiveness -= 1
        break
    elsif response.to_i == 3
        aggressiveness -= 2
        independence -= 1
        break
    elsif response == "exit"
        exit
    else
        invalid_response(response)
    end
end

# question 4
print_in_ascii("Question 4")
loop do
    puts(get_scenarios[3])
    response = gets.chomp
    if response.to_i == 1
        aggressiveness += 1
        break
    elsif response.to_i == 2
        break
    elsif response.to_i == 3
        aggressiveness -= 1
        break
    elsif response == "exit"
        exit
    else
        invalid_response(response)
    end
end

# presenting spirit animal
print_in_ascii("You are...")
if aggressiveness >= 0 && independence >= 0
    animal = "Leopard"
elsif aggressiveness < 0 && independence >= 0
    animal = "Koala"
elsif aggressiveness >= 0 && independence < 0
    animal = "Dwarf Mongoose"
else
    animal = "Capybara"
end

puts(get_description(animal))

