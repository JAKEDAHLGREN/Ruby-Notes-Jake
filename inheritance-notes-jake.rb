# Ruby Inheritance

### Everything In Ruby Is An Object

# initialize - declares new instances of a Classes with unique show_data
  # it takes parameters - as many as we like


class Hulu # PascalCase for class names, snake_case for def names
  # attr_accessor creates a gettter and a setter method for the instance variables that it gets passed
  attr_accessor :title, :actor, :watched
  # special setter method:
  def initialize(title, actor)
    @title = title
    @actor = actor
    @watched = false
  end

  #getter method
  def show_data 
    if @watched
      "You have watched #{@title} starring #{@actor}"
    else
      "You have not watched #{@title} starring #{@actor}"
    end
  end
end


# streaming video: HBOMax, Netflix, 
# streaming music: Pandora, Apple Music, 
# streaming multimedia

# What do thes have in common?
# title, runtime, completed, liked

# Superclass(parent class)! holds the common behaviors of shared subclasses
  # then passes that info to the subclasses(child class)

# superclass/parent class - attributes are common to all possible subclasses/child classes
# subclass/child class - attributes that are specific to that child and not other children

class StreamingApp # superclass/parent class
  attr_accessor :title, :runtime, :completed, :liked
  def initialize(title, runtime) # only pass the parameters that are common with ALL child classes
    @title = title
    @runtime = runtime
    @completed = false
    @liked = nil 
  end

  def app_data 
    if @completed
      "You have completed #{@title} which is #{@runtime}"
    else
      "You have not completed #{@title} starring #{@runtime}"
    end
  end
end
# now make the subclasses/child class, they use the method super()
  # The initialize invokes the super, tells Parent class 'I'm going to use your initialize and borrow your parameters'

class YouTube < StreamingApp  # using '<' establishes the relationship: child to parent
  attr_accessor :creator, :channel
  def initialize(title, runtime, creator, channel)
    # when creating a new instance we need to pass info back up to the streaming app
    super(title, runtime) # pass the parameters of the super's initialize()
    @creator = creator
    @channel = channel
  end
end

video = YouTube.new('How to Code', '5 hrs', 'Ray', 'Everyone Loves Ray') # new instance of class YouTube
#p video 
  #<YouTube:0x00000001025f6c40 @title="How to Code", @runtime="5 hrs", @completed=false, @liked=nil, @creator="Ray", @channel="Everyone Loves Ray">

#p video.app_data
  # "You have not completed How to Code starring 5 hrs"
#p video.title
  #"How to Code"
#p video.runtime
  #"5 hrs"
p video.completed
  #false
p video.completed = true
  #true
p video.completed
  #true
p video.app_data
  #"You have completed How to Code which is 5 hrs"