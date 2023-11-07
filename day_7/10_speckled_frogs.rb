# ## 10 Speckled Frogs

# Create a file named `10_speckled_frogs.rb` and within that file, write several a program that will print the following nursery rhyme:

# > 3 speckled frogs sat on a log 
# > eating some most delicious bugs.  
# > One jumped in the pool where its nice and cool,
# > then there were 2 speckled frogs.
# >
# > 2 speckled frogs sat on a log 
# > eating some most delicious bugs.  
# > One jumped in the pool where its nice and cool,  
# > then there was 1 speckled frogs.
# >
# > 1 speckled frog sat on a log 
# > eating some most delicious bugs.  
# > One jumped in the pool where its nice and cool,  
# > then there were no more speckled frogs!

# ### Required
# Make your program print the rhyme above for *10* frogs, with attention to where language changes.

frogs = (1..10).to_a.reverse
frogs_in_words = []
def in_words(num)
    if num == 1
        "one"
    elsif num == 2
        "two"
    elsif num == 3
        "three"
    elsif num == 4
        "four"
    elsif num == 5
        "five"
    elsif num == 6
        "six"
    elsif num == 7
        "seven"
    elsif num == 8
        "eight"
    elsif num == 9
        "nine"
    elsif num == 10
        "ten"
    end
end


def frog_log(num)
    if num > 1
    puts "#{in_words(num).capitalize} speckled frogs sat on a log
    eating some most delicious bugs.
    One jumped in the pool where its nice and cool,
    and then there were #{in_words(num - 1)} speckled frogs."
    else
        puts "#{in_words(num).capitalize} speckled frog sat on a log
        eating some most delicious bugs.
        One jumped in the pool where its nice and cool,
        and then there were #{in_words(num - 1)} speckled frogs."
    end
end

frogs.each do |num|
    frog_log(num)
end


# ### Extension 1
# Print word versions of each number in the first and fourth lines, for example, the first verse in the above example would print 'Three speckled frogs...' and 'were two speckled frogs'.

# ### Extension 2
# Make your program work for any number of frogs.
