# starting with an integer that will determine length and width of the board. need to make that
# integer then print a line that has that number of spaces, alternating between 'x' and ' ', and
# it needs to print it the same number of times as the integer that is put in.

# could make the number that is input create an array. that array is then turned into a has where
# each odd number is a key with value 'X' and each even number is a key with value ' '. Then,
# iterate over that making it print the line of values as many times as the initial number would 
# indicate


# ------------- attempt 1
def make_range(num)
    num = (1..num*num).to_a
end

def make_hash(num)
    arr = []
    make_range(num).each do |num|
        if num.odd? == true
            arr.push(num, 'X')
        else
            arr.push(num, ' ')
        end
    end
    arr.each_slice(2).to_a.to_h
end

def make_squares(num)
    str = ''
    make_hash(num).each do |key, value|
        str.concat(value) * num
    end
    str
end

def checker_board(num)
    if num.odd? == true
        board_line = make_squares(num)
        board_line.scan(/.{#{num}}|.+/).join("\n")
    else
        board_line = make_squares(num)
        even_num_board_line = board_line.chars.each_slice(num).to_a
        even_num_board_line.each_with_index do |value, index|
            if index.odd? == true
                value.rotate!(1)
            end
        end
        even_num_board_line.join.scan(/.{#{num}}|.+/).join("\n")
    end
end
    

puts checker_board(10)





       




