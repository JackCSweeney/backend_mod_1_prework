# ## FizzBuzz

# Create a file named fizzbuzz.rb and within that file, write a program that prints something for each number from 1 to 100 with the following rules:

# * For any number that is a multiple of 3, print 'Fizz'
# * For any number that is a multiple of 5, print 'Buzz'
# * For any number that is a multiple of both 3 and 5, print 'FizzBuzz'
# * For all other numbers, print the number.

# The output of your program will look something like this:
# ```
# => 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz, ..., 98, Fizz, Buzz
# ```

# ### Bonus
# Can you write the program so that it will run for any range of numbers?


# Need to create a method that will take any number within a range of 1-100 that is a multiple of 3 change that number
# to the string Fizz, multiple of 5 to the string Buzz, and multiples of both to the sting FizzBuzz.

# Will be working with integers as an argument and strings and integers as returns. Will need to use if, elsif, and else

numbers = (1..100).to_a

def fizz_buzz(num)
    if num % 3 == 0 && num % 5 == 0
        puts "FizzBuzz"
    elsif num % 3 == 0
        puts "Fizz"
    elsif num % 5 == 0
        puts "Buzz"
    else
        puts num
    end
end

numbers.each do |num|
    fizz_buzz(num)
end


