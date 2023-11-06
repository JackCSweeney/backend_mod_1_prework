# Create a person class with at least 2 attributes and 2 behaviors. 
# Call all person methods below the class and print results
# to the terminal that show the methods in action.

class Person
    attr_accessor 
    def initialize(name, weight, height)
        @name = name
        @weight = weight
        @height = height 
    end
    def lose_weight(num)
        @weight -= num
        puts "#{@name} lost #{num} lbs and now weighs #{@weight} lbs"
    end
    def get_taller(num)
        @height += num
        puts "#{@name} grew #{num} inches and is now #{@height} inches tall"
    end
end

jack = Person.new("Jack", 173, 85)
jack.lose_weight(3)
jack.get_taller(4)


