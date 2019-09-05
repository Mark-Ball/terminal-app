# displays help message if the -help option is called
def options_handler
    argv_copy = ARGV.map{ |i| i }
    ARGV.clear

    if argv_copy.include?("-help")
        display_help_message
    end
end

#prints help message to the screen
def display_help_message
    puts("Discover Your Spirit Animal is a fun personality quiz which identifies your spirit animal.\n\nYou will be presented with a description of a situation and a list of options. When prompted, you must select one of the available options by typing the number corresponding to the choice and pressing enter. If you enter something which is not one of the available choices, the question will be presented again. After all questions have been answered your spirit animal will be revealed!\n\nIf you wish to exit the program, you can type \"exit\" into the terminal when prompted for input.")
    exit
end

# prints a message to the screen informing the user that their input was invalid
def invalid_response(response)
    puts("\"#{response}\" was not a valid input. Please input a number corresponding to your choice.")
end

# returns an array of scenarios
def get_scenarios
    return [
    "You and your friend are at the bar. Your friend accidentally spills his drink on a group of large drunk men. They demand an apology but your friend refuses. An argument begins. He squares up as if to fight them all, then looks to you." + " What do you do?".colorize(:yellow) + "\n\nOptions:\n1. Stand with your friend no matter what\n2. Convince your friend to back down\n3. What friend? I don't even know this guy!",
    "You are at a party with a few friends, and many people you don't know." + " What do you do?".colorize(:yellow) + "\n\nOptions:\n1. Hang out with the people you already know\n2. Meet some new people",
    "You are playing a casual game of mario kart with your spouse. You are winning until you are hit by a blue shell right before the finish line and end up losing. Your spouse points at you, laughs, and jumps up in glee." + " What do you do?".colorize(:yellow) + "\n\nOptions:\n1. Demand a rematch to reclaim your honour\n2. Let your spouse known that gloating is not an appropriate way to celebrate a win\n3. Congratulate them on their win",
    "Your neighbour plays music loudly in the middle of the night. It disturbs your sleep and you are unable to focus in the next day's Ruby class, getting many answers wrong in the Kahoot. This continues for several nights." + " What do you do?".colorize(:yellow) + "\n\nOptions:\n1. Knock on your neighbour's door to ask them face-to-face to stop\n2. Leave a note asking them to stop\n3. Accept it and buy some earplugs"
    ]
end

# searches the hashes within the array for an animal, returns the description of that animal if found
def get_description(animal)
    animals = [
        {name: "Dwarf Mongoose", description: "You are the Dwarf Mongoose, Africa's smallest carnivorous mammal. You aren't afraid of a fight, even though you are only 300 grams, and you would never abandon your fellow mongeese."},
        {name: "Capybara", description: "You are the Capybara, a beloved member of the rodent family from South America. You are renown for your ability to get along with others regardless of differences and you make friends easily."},
        {name: "Leopard", description: "You are the Leopard, an agile hunter of the cat family, who prefers to hunt alone. You are determined in going after the things you want, no matter the opinion of others."},
        {name: "Koala", description: "You are the Koala, the tree-loving Australian marsupial. While others waste energy running around and worrying, you just prefer to sit back by yourself and relax."}
    ]

    for hash in animals
        if hash[:name] == animal
            description = hash[:description]
        end
    end

    return description
end

# prints the argument to the screen as ascii art
def print_in_ascii(input)
    a = Artii::Base.new
    puts(a.asciify(input))
end