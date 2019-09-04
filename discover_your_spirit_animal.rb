require_relative "./spirit_animal_methods.rb"

#initialising variables
aggressiveness = 0
independence = 0

argv_copy = ARGV.map{ |i| i }
ARGV.clear

if argv_copy.include?("-help")
    display_help_message
end

#welcome message
puts("Welcome to Discover Your Spirit Animal. This application will help you discover what animal spirit lies within.")

#question 1
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

#question 2
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

#question 3
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

#question 4
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

p("Aggressiveness: #{aggressiveness}")
p("Independence: #{independence}")
#presenting spirit animal
if aggressiveness >= 0 && independence >= 0
    animal = "Leopard"
elsif aggressiveness < 0 && independence >= 0
    animal = "Koala"
elsif aggressiveness >= 0 && independence < 0
    animal = "Dwarf Mongoose"
else
    animal = "Capybara"
end

p(get_description(animal))