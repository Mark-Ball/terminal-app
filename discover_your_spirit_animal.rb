#questions asked in order
#aggressiveness and independence variables
#user responses
#error handling

require_relative "./scenarios_animals.rb"
require_relative "./spirit_animal_methods.rb"

aggressiveness = 0
independence = 0

argv_copy = ARGV.map{ |i| i}
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
    else
        invalid_response(response)
    end
end

#question 3
loop do
    puts(get_scenarios[2])
    response = gets.chomp
    if response.to_i == 1
        aggressiveness += 1
        break
    elsif response.to_i == 3
        independence -= 1
        break
    else
        invalid_response(response)
    end
end

#question 4
loop do
    puts(get_scenarios[3])
    response = gets.chomp
    if response.to_i == 1
        aggressiveness += 2
        break
    elsif response.to_i == 2
        aggressiveness += 1
        break
    elsif response.to_i == 3
        break
    else
        invalid_response(response)
    end
end


# puts("line1\nline2")
p(aggressiveness)
p(independence)