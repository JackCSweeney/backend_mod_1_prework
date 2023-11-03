# # If you had an array of numbers, e.g. [1,2,3,4], how do you print out the doubles of each number? Triples?
# nums = [1,2,3,4]
# nums.each do |num|
#     puts num * 2 # change the 2 to a 3 in order to do triples
# end

# # If you had the same array, how would you only print out the even numberd? What about the odd numbers?
# nums2 = [1,2,3,4]
# nums2.each do |num2|
#     if num2.even? == true # To print odd numbers, change even? to odd?
#         puts num2
#     end
# end

# # How could you create a new array which contains each number multipled by 2?
# nums3_answer = []
# nums3 = [1,2,3,4]
# nums3.each do |num3|
#    nums3_answer.concat([*(num3 * 2)])
# end
# puts nums3_answer

# Given an array of fist and last names, e.g. ["Alice Smith","Bob Evans","Roy Rogers"], how would you
# print out the full names line by line?
names = ["Alice Smith","Bob Evans","Roy Rogers"]
# names.each do |full_name|
#     puts full_name
# end

    # How would you print out only the first name?
# first_name = []
#     names.each do |full_name|
#     first_name.concat([*(full_name.split(" "))])
# end
# puts first_name.values_at(* first_name.each_index.select {|i| i.even?})

    # How would you print out only the last name?
# last_name = []
# names.each do |full_name|
#     last_name.concat([*(full_name.split(" "))])
# end
# puts last_name.values_at(* last_name.each_index.select do |i|
#     i.odd?
# end)
    # How could you print out only the initials?
# initials = []
# names.each do |name|
#     initials.concat([*(name.gsub(/[^A-Z]/, ""))])
# end
# puts initials

    # How can you print out the last name and how many characters are in it?
# last_name_and_length = []
# full_name = []
# last_name =[]
# names.each do |name|
#     full_name.concat([*(name.split(" "))])
# end
# last_name = full_name.values_at(* full_name.each_index.select do |i|
#     i.odd?
# end)
# last_name.each do |lname|
#    last_name_and_length.concat(["#{lname}, #{lname.length}"])
# end
# puts last_name_and_length
    # How can you create an integer which represents the total number of characters in all the names?
names_length = 0
full_name = []
names.each do |name|
    full_name.concat([*(name.delete(" "))])
end
full_name.each do |joined_name|
    names_length += joined_name.length
end
puts names_length
