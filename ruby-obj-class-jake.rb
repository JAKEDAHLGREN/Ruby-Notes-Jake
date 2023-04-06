# Ruby Objects & Classes 4/6/23

# class - keyword used to define a Class
# naming convention for class name = PascalCase
# end - defines the scope of the class

# class AppleTv
# end

# p AppleTv.new
# returns a new instance of class, and it is unique --> it is an object. 
# every time you run p AppleTv.new it will be a unique object

# appleTV = AppleTv.new
# p appleTV
#output: new object created, <AppleTv:0x0000000013116aa0>

# classes need somthing to do 
  #1. hold data in our class
  #2. retrieve data that we've set

# getting and setting

#Setter - allow us to pass in values using parameters, and store those values to variables
  # instance variable - a variable that belongs to a class --> @
# class AppleTv 
#   def set_show_data(title, actor)
#     @title = title 
#     @actor = actor
#   end
# end

# appleTV = AppleTv.new
# appleTV.set_show_data('Ted Lasso', 'Jason Sudekis')
# appleTV.set_show_data('Jason Sudekis', 'Ted Lasso')
# p appleTV

# output: #<AppleTv:0x00000001008a1c58 @title="Ted Lasso", @actor="Jason Sudekis"> 
#<AppleTv:0x00000001021718c8 @title="Jason Sudekis", @actor="Ted Lasso">


# Getter

# class AppleTv 
#   def set_show_data(title, actor)
#     @title = title 
#     @actor = actor
#   end

#   def get_title
#     @title 
#   end

#   def get_actor
#     @actor 
#   end
# end

# show = AppleTv.new # class name
# show.set_show_data('Fantasy Island', 'Eva Mendez')
# p show
# output: #<AppleTv:0x0000000100280ec8 @title="Fantasy Island", @actor="Eva Mendez">
#p show.get_title
  # output:"Fantasy Island"
#p show.get_actor
  # output:"Eva Mendez"


# Initializer - special kind of setter method that takes parameters

# class AppleTv 
#   def initialize(title, actor)
#     @title = title 
#     @actor = actor
#     @watched = false # default value, therefore doesn't have to be passed in parameters (title, actor)
#   end

#   def get_title # Getter Method
#     @title 
#   end

#   def get_actor # Getter Method
#     @actor 
#   end

#   def has_watched #Setter Method, defining a method to update the @watched value to true
#     @watched = true
#   end

#   def show_data 
#     if @watched 
#       "You have watched #{@title} starring #{@actor}"
#     else 
#       "You have not watched #{@title} starring #{@actor}"
#     end   
#   end
# end

# show = AppleTv.new('Fantasy Island', 'Eva Mendes')
#p show.get_title # Getter Method Call
# output:"Fantasy Island"
#p show.get_actor # Getter Method Call
# output:"Eva Mendez"

# new_show = AppleTv.new('I love Lucy', 'Lucille Ball')
#p new_show.show_data
# output: "You have not watched I love Lucy starring Lucille Ball"
# p new_show.has_watched # updates the @watched value to true
# p new_show.show_data

# show3 = AppleTv.new('SpongeBob', 'Patrick Star')
# p show3.has_watched
# p show3.show_data
# output: true, "You have watched SpongeBob starring Patrick Star"

# Attribut Accessor 
# attr_accessor - to make more methods - by passing a symbol of our instance variable (:actor), we get a getter and a setter for that variable

class AppleTv 
  attr_accessor :title, :actor, :watched # not parameters, they are symbols(keys) of the instance variables we want getter/setter for

  def initialize(title, actor)
    @title = title 
    @actor = actor
    @watched = false # default value, therefore doesn't have to be passed in parameters (title, actor)
  end
# can remove all this code when using the attr_accessor method
  # def get_title # Getter Method
  #   @title 
  # end

  # def get_actor # Getter Method
  #   @actor 
  # end

  # def has_watched #Setter Method, defining a method to update the @watched value to true
  #   @watched = true
  # end

  def show_data 
    if @watched 
      "You have watched #{@title} starring #{@actor}"
    else 
      "You have not watched #{@title} starring #{@actor}"
    end   
  end
end

show4 = AppleTv.new('Insecure', 'Issa Rae')
p show4.title # output: "Insecure"
show4.title = 'Living Single' # reassign show4 title value
show4.actor = 'Queen Latiffa' # reassign show4 actor value 
p show4.title # output: "Living Single"
p show4.show_data # output: "You have not watched Living Single starring Issa Rae"
show4.watched = true # reassign watched to true
p show4.show_data # output: "You have watched Living Single starring Issa Rae"