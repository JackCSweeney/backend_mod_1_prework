## Day 6 Questions

1. In your own words, what is a Class?
A class is a description of an abstract object/thing. So something like a student would be a class as its a general description of something that would have individual unique objects within in it.

1. What is an attribute of a Class?
A piece of data attached to a class that could be unique for every instance of that class.

1. What is behavior of a Class?
A behavior is a method defined within a class that interacts with different instance variables within the class.

1. In the space below, create a Dog class with at least 2 attributes and 2 behaviors:
class Dog
    def initialize(age, weight)
        @age = age
        @weight = weight
    end
    def get_older(num)
        @age += num
    end
    def grow(num)
        @weight += num
    end
end


1. How do you create an instance of a class?
By using the following code/syntax:

instance = Class.new()

1. What questions do you still have about classes in Ruby?
How many atrributes can a class hold? Is there a true limit, or is it more of a recommendation to keep things simpler for yourself and others working with your code?