# 4/4/23 lecture notes
- Matz(creator of Ruby) - "Matz is nice and so we are nice" MINASWAN

- Dynamic language - dynamically typed: when creating a variable you don't have to declare what data type it is, and it can be changed

- Interpreted language - code is read line by line by interpreter/computer

- Open-source language - available to the public for free and can be modified.

- Scripting language - code that creates logic

- OOP (object oriented) language - everything inside of ruby is an object(house), or an instance of a class(blue-print)


Mac has Ruby downloaded stock
- terminal -
  - check if ruby is running: ruby -v
  - Ruby console : irb
    - REPL (read,evaluate,replicate, loop)
  - Exit Ruby console: exit


### data types 
 - Intergers(numbers): add, sub, multi, div, power of, modulo
 - Float(partial number): you need to introduce a float to receive a float - 4/3 = 1, 4/3.0 = 1.3333333333333
 - String: single quotes
 - Boolean: equality operators - 5 == 5 => true (no === in Ruby), 5 == '5' => false (no type coercion, needs to be the same data type), 5 < 8 => true, 5 <= 5 => true
   - Equality operator: ==
   - Relational: >, <, >=, =>
   - Negation: !=
   - Logical: && (both must be true to = true), || (one must be true to = true) 
 - Nil: nothing
 - symbols:

### Variable
- No declaration needed
- Named convention: snake_case (my_name = 'jake')
- String interpolation: "Hey there, #{my_name}!"


### Methods
- dont require parenthesis, all lowercase
- if there is a ?, it returns a boolean value
- Ruby methods by default are accessors(doesn't modify your variable)

  - .length: my_name.length => 4
  - .upcase: my_name.upcase => "JAKE"
  - .capitalize: my_name.capitalize => "Jake"\
  - .reverse: my_name.reverse => "ekaj"
  - .delete(''): my_name.delete('e') => "jak"
  - .include?: my_name.include?('e') => true
    - check what class the variable belongs too
      - my_name.class => String (PascalCase means it is a class)
      - 3.class => Integer, 3.0.class => Float, true.class => TrueClass, false.class => FalseClass, nil.class => NilClass
  - Modify data type: 4.to_s => "4", '9'.t0_i => 9
- Can make your method a mutator
 - To reassign your variable: my_name = my_name.reverse => "ekaj", my_name.reverse! => "jake"
 - Can use the bang Operator to mutate your method

### Arrays

- [3, 4, 5, 6, 7]
  - Array Methods -
   - zero indexed
   - << shovel operator, used like .push
    - my_array.length => 5
    - my_array[0] => 3
    - my_array[-1] => 7, my_array[-2] => 6
    - my_array.first => 3
    - my_array.last => 7
    - my_array.reverse => [7, 6, 5, 4, 3]
    - my_array.revers.first => 7
    - my_array => [3, 4, 5, 6, 7]

  - Reassign
    - my_array[2] = 9 => 9
    - my_array => [3, 4, 9, 6, 7]
    - my_array << 77 => [3, 4, 9, 6, 7, 77] 
    - 
- calling your code in Ruby
  - puts 
    - # put string
    - => Jake

  - p
    - Hard output
    - => "Jake"

"Hey there, #{my_name}!"
my_pups_name = 'Lola'
"Good girl, #{my_pups_name}!"


tv_array = ['Break Bad', 'Ted Lasso', 'Alone', 'Party Down', ]


# Ruby Intro 4/4/23

my_pups_name = 'Lola'
puts my_pups_name
//

p my_pups_name



```js








```