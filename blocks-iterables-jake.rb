# Iteration - repeating a process until a condition is met

# Types of iteration 
  # while

  # Structure
   # starting point
   # while keyword with the condition
     # the value you want to be printedd
     # the order of the value
    # requires a starting value and runs until a condition is met

    number = 1
    while number < 8
      p number
    end
    # Output: infinite loops of 1 because no there is no instruction on when the p number should stop. control + c will stop the stack overflow in your terminal

    # to prevent infinite loops, give the instructions of an incrementation
    
    number = 1
    while number < 8
      p number # when calling the values individually p call inside the loop
      number = number + 1
    end
    # output:
    # 1
    # 2
    # 3
    # 4
    # 5
    # 6
    # 7

    #
     nums_array = []
     num = 1
    while number <= 23
      nums_array << num
      # num = num + 2 long way to write your incriment statement
      num += 2 # short hand version
    end
    p nums_array # when storing info in an array p call out of the loop
    #output: [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23]

  # Blocks - code functionality that gets passed to a method
    # Typically defined with do and end
    # can also be defined with {}, only if it is one line of code

    # structure:
      #object.method do ---> start of the block
        # code statement ---> what will be executed
      # end ---> end of the block

      # method used in example: times - a method that repeat the code a certain number of times
      my_number = 8

      my_number.times do 
        p 'Polyglots!'
      end
      # output:
      # "Polyglots!"
      # "Polyglots!"
      # "Polyglots!"
      # "Polyglots!"
      # "Polyglots!"
      # "Polyglots!"
      # "Polyglots!"
      # "Polyglots!"

    # refactor: with {} for one line
    my_number.times {p 'Polyglots!'} #

  # times - a method that repeat the code a certain number of times

  # each - method requires a list such as an object or array to determine the ending condition
    # to access the elements of the list you will need to use: pipes || your parameter will be inside the pipes

  emojis = ['🥥', '🍍', '🏝️' ]

  emojis.each do |value|
    p value
  end
  # Output: 
  # '🥥'
  # '🍍' 
  # '🏝️' 

  p emojis
  # Output: ['🥥', '🍍', '🏝️' ] array does not change because in ruby the methods are accessors

  emojis.each do |value|
    p "The #{value} emoji has been passed to the block"
  end
  # Output: 
  # "The 🥥 emoji has been passed to the block"
  # "The 🍍 emoji has been passed to the block"
  # "The 🏝️ emoji has been passed to the block"

  # map - 
  jump_start = ['Will', 'Gene', 'Nicole']


  jump_start.map do |value|
    value + '🏆' 
  end
  p jump_start 
  # output: ["Will", "Gene", "Nicole"]

  # 1) to see the new array, store the map operation in a variable
reward = jump_start.map do |value|
    value + '🏆'
  end
  p reward
  # output: ["Will🏆", "Gene🏆", "Nicole🏆"]

  # Or 2) Use the bang operator to change the original array
  jump_start.map! do |value|
    value + '🏆'
  end
  p jump_start
  # output: ["Will🏆", "Gene🏆", "Nicole🏆"]

  # range - 

  (1..10).each do |value|
  p value
end

# output:
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
# 10
