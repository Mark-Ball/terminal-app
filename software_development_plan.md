#Software development plan for Discover Your Spirit Animal


[Github]https://github.com/Mark-Ball/terminal-app


#Statement of Purpose and Scope

Discover Your Spirit Animal is a terminal application which assesses the user's personality type by asking the user  questions and then informs the user which animal they are similar to and which personality attributes they share with the animal.

The problem this application will solve is to provide personality information to people who are too time-poor to complete academic personality testing such as the Myers-Briggs Type Indicator, which can involve 100-200 questions and take over 30 minutes to complete. Discover Your Spirit Animal also offers a fun alternative to these other personality assessments, which may seem disinteresting to some. The reason for the development of Discover Your Spirit Animal is to allow users to learn about themselves and consider how their behaviour may be regarded by others.

The target audience for Discover Your Spirit Animal is people who enjoy taking online quizzes to learn more about their personality but are too time-poor to complete longer personality assessments. Secondly, the application is also for people who are disinterested in participating in an academic personality assessment and prefer a fun alternative. Lastly, the application is for people who do not wish to pay for their personality assessment. The target audience will prefer Discover Your Spirit Animal to other personality assessments available online due to the speed with which they can complete the quiz, the fun questions, and because it is free to take.

The application will function by presenting the user with a scenario and asking what they would do. Available options will be displayed and the user will be asked to input their choice into the terminal. After inputting their choice to the scenario, the next scenario will be presented. This process will repeat until all questions have been asked and the program will then output to the screen which animal has a similar personality to, as well as a paragraph explaining these personality characteristics.

#Features
#Feature 1 - List of animals
Discover Your Spirit Animal includes several animals with distinct personalities which may be the final result of the quiz. These animals were chosen based on both distinctiveness of behaviour and general beliefs about the personality of those animals. Each animal also has a short paragraph describing the most prominent personality characteristics of the animal.

The animals are held in the program as a local array variable, where each element of the array is a hash. Each hash contains two symbols as keys: the name of the animal and a description. The values that are paired with each key are strings. This allows the application to iterate through the hashes within the array looking for the value of the name key, and retrieve the description which is paired with each name. Therefore the correct description is always presented to the user.

#Feature 2 - List of questions
Discover Your Spirit Animal includes several questions which are printed to the screen. These questions describe a scenario and ask the user which of the defined responses they wish to choose. The responses the user gives to these questions determines which spirit animal they are assigned.

Following each question, the application pauses to receive the user's response and then saves that response under a local variable. Each question exists within a loop, which checks if the response was valid. E.g. if the question required a "yes" or "no" response, anything else will print a short error message to the screen and display the same question again. Therefore all questions will be answered with valid responses.

#Feature 3 - help option
Discover Your Spirit Animal includes a help option which explains various options which can assist users in using the application. This information may include general background on the application such as its purpose, and instructions on how to interact with the application when prompted to do so.

The help option is accessed by including --help as an argument when calling discover_your_spirit_animal.rb from the terminal. I.e by typing: ruby discover_your_spirit_animal.rb --help

An if statement is included in discover_your_spirit_animal.rb which queries if ARGV equals "--help" and if so prints the help message to the screen. The application is then terminated, meaning that if the user wishes to use the application, they must call it again without the --help argument.

#User interaction and experience



#Control flow diagram


#Implementation plan