# This works similarly to scripts with ARGV
def print_two(*args)
    arg1, arg2 = args
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

# This shows that the *args in the previous doesn't matter if we're only using two arguments
def print_two_again(arg1, arg2)
    puts "arg1: #{arg1}, arg2: #{arg2}"
end

# This will just take one argument
def print_one(arg1)
    puts "arg1: #{arg1}"
end

# This will take no arguments
def print_none()
    puts "I got nothin'."
end

print_two("Zed", "Shaw")
print_two_again("Zed", "Shaw")
print_one("First!")
print_none()