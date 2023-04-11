# Ruby Hashes 4/6/23

# Hashes - a collection of unique key:value pairs

  # Key - a unique identifier that is the data type of a symbol
  # Value - associated with the key/symbol, and is any data type recognised by Ruby

  crystal_gem = {gem1:'Pearl', gem2:'Garnet', gem3:'', gem4:'Bismuth'}
  
  p crystal_gem #{:gem1=>"Pearl", :gem2=>"Garnet", :gem3=>"Amathyst", :gem4=>"Bismuth"}

# => Hash Rocket

fusions = Hash.new
# p fusions # {}

# CRUD - Create, Read, Update, and Delete

# Read - return data

p crystal_gem

# return specific values - use [] notation

p crystal_gem[:gem2] # "Garnet"

# Create - we can create new content

 crystal_gem = {gem1:'Pearl', gem2:'Garnet', gem3:'', gem4:'Bismuth'}

 # fusions = hash.new


# Update - we can add or modify the data

  crystal_gem[:gem5] = 'Malachite'
  p crystal_gem
  # output: {:gem1=>"Pearl", :gem2=>"Garnet", :gem3=>"Amathyst", :gem4=>"Bismuth", :gem5=>"Malachite"}

  crystal_gem[:gem3] = 'Amethyst'
  p crystal_gem
  # output: {:gem1=>"Pearl", :gem2=>"Garnet", :gem3=>"Amethyst", :gem4=>"Bismuth", :gem5=>"Malachite"}

# change the name of a symbol.
  # give the new name, and then .delete the old name
  crystal_gem[:fusion] = crystal_gem.delete(:gem2)
  p crystal_gem
  # output: {:gem1=>"Pearl", :fusion=>"Garnet", :gem3=>"Amathyst", :gem4=>"Bismuth", :gem5=>"Malachite"}

# Delete - Removing content

crystal_gem.delete(:gem5)
p crystal_gem
# output: {:gem1=>"Pearl", :fusion=>"Garnet", :gem3=>"Amathyst", :gem4=>"Bismuth"}

# Modules - grouping of things based on their similar properties
  # ex) numbers - integers, floats, big integers

# Enumerables - grouping of things that are iterable
  # ie) arrays, ranges, and hashes

# Duck Type - 'if it walks like a duck, and quacks like a duck, it's a duck'

# new hash
stevens_life = {dad: 'Greg', mom: 'Rose Quartz', bestie: 'Connie', home: 'Beach City'}

stevens_life.each do |key, Value|
  p "#{value} is Steven's #{key}"
end
# output:
# "Greg is Steven's dad"
# "Rose Quartz is Steven's mom"
# "Connie is Steven's bestie"
# "Beach City is Steven's home"


def stevens_uni hash
  hash.map do |key, value|
    "#{value} is Steven's #{key}"
  end
end

p stevens_uni(stevens_life)
# output: [ "Greg is Steven's dad", "Rose Quartz is Steven's mom", "Connie is Steven's bestie", "Beach City is Steven's home"]