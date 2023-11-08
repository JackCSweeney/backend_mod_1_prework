# ## Ceasar Cipher

# Also known as a shift cipher, the Ceasar Cipher is one of the oldest and simplest encoding techniques.  
#A Ceasar Cipher works by shifting the alphabet by a defined number of letters down the alphabet.  
#For example, with a left shift of 3, 'D' would be replaced by 'A', 'E' would be replaced by 'B', and so on.  
#See below for a full alphabet example with a left shift of 3:

# ```
# plain:  ABCDEFGHIJKLMNOPQRSTUVWXYZ
# cipher: XYZABCDEFGHIJKLMNOPQRSTUVW

# ```

# Create a file named caesar_cipher.rb and within that file, write a program that will take any string, and encode it based on a shift value provided by the user.  The interaction pattern for this program might look something like this:

# ```
# cipher = CeasarCipher.new
# cipher.encode("Hello World", 5)
# => "CZGGJ RJMGY"
# ```

# I need alphabet to be a hash with each letter being a key and their value being 1-26.
# then need to look at the incoming string and attach the value of each letter to them.
# then need to shift each of those values up by the input number
# then need to print out the keys associated with the new numbers

# 

# class CeasarCipher
#     attr_accessor :string

#     def initialize(string)
#         @string = string 
#     end

#     def encode(num)
#         @string = @string.upcase.chars
#         puts @string.each do |chars|
#             chars.succ
#         end
#     end
# end



# message = CeasarCipher.new("Hello World")

# puts message.encode(5)



# Method version: Currently prints it out without any spacing in the words that get changed by the cipher. Will attempt to 
# refactor to make it keep any spaces that are input with the original string

def encode(string, num)
    
    letters_array = ('a'..'z').to_a
    numbers_array = (1..26).to_a
    alphabet_hash = Hash[letters_array.zip(numbers_array)]  
    new_letters_array = letters_array.rotate(num - (num*2))
    new_alphabet_hash = Hash[new_letters_array.zip(numbers_array)]
    input_values = []
    return_string = ""

    string.delete(' ').downcase.chars.each do |letter|
        input_values.push(alphabet_hash[letter])
    end
    input_values.each do |num|
        return_string.insert(-1, new_alphabet_hash.key(num))
    end
    puts return_string.upcase
end

encode("Hello World", 5)
