# Ruby Conditionals and Methods Lecture 4/5/23

# if - keyword
# end - keyword

if 7 + 8 == 15
  p 'the answer is 15'
end

# else - keyword - catch all / does not take evaluation

if 7 + 8 == 15
  p 'the answer is 15'
else
  p 'no conditions evaluated to true'
end

# elsif (else if in Ruby) - takes an evaluation (just like js) & we can have as many elsif as we need

if 7 + 8 == 15
  p 'the answer is 15'
elsif 7 + 8 == 17
  p 'the answer is 17'
elsif 7 + 8 == 15
  p 'the answer is 15'
else
  p 'no condition evalueated to true'
end

# User Inputs

my_name = 'Jake'

if my_name == 'Jake'
  p 'Hey there Jake'
else
  p "hey there, #{my_name}"
end

# gets - takes user input, and always return a string

my_name = gets
  p my_name

# chomp - remove any additional characters at the end of a string

p 'What is your name?'
your_name = gets.chomp
p "thank your for being a polyglot, #{your_name}"

my_name = gets.chomp
  p my_name

if my_name == 'Jake'
  p 'hi there Jake'
else 
  p "Hey there, #{my_name}"
end

# Methods (all functions in Ruby are methods) snake_case

# def - creates a method
  # every def needs an end - end

def greeter
  'Hello Bravo!'
end

p greeter # calling our method to run

# implicit return - returns last line of every method, unless we say otherwise
# def greeter
#   'Hello'
#   'Bye'
# end

# p greeter => 'Bye'

def greeter name
  "Hello #{name}"
end

p greeter 'Mark'

def multiply(num1, num2)
  num1 * num2
end

p multiply(3, 5)
p multiply(6, 7)
p multiply(4, 9)
p multiply(2, 4)

def bigger_number(num1, num2)
  if num1 > num2
    "#{num1} is bigger than #{num2}"
  elsif num1 < num2
    "#{num2} is bigger than #{num1}"
  else
    "#{num1} and #{num2} are equal!"
  end
end

# p and puts only gets called outside of the method

p bigger_number(32, 49)
p bigger_number(42, -12)
p bigger_number(15, 15)

# create a method, that takes in a users name and age, returns a custom answer that returns if the user is able to vote
# User Input
puts 'Enter your name:'
user_name = gets.chomp
p user_name

puts 'Enter your age:'
user_age = gets.chomp.to_i # changes age to an integer
p user_age

def can_you_vote(name, age)
  if age >= 18
    "Hi #{name}! #{age} is old enough to vote"
  else
    "Hi #{name}! #{age} is not old enough to vote"
  end
end

# p can_you_vote(user_name, user_age) - can't compare strings and integers, you must convert use .to_i for your user_age value
p can_you_vote(user_name, user_age) # now that it has user_age = gets.chomp.to_i this p call will return our string interpilation
p user_age.class

# 