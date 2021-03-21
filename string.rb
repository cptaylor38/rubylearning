# Write code to sort a given array from smallest number to largest number, without using any convenience methods (i.e. #sort in Ruby)
# How would you reverse a given word without using any convenience methods (i.e. #reverse in Ruby).

def find_highest(array)
    highest = nil;
    for num in array do
        if highest
            if num > highest
                highest = num
            end
        else
            highest = num
        end
    end
    puts highest
end

find_highest([3, 5, 2, 1, 4])

def reverse_word(word)
    reversedString = ""
    i = word.length
    while i >= 0 do
        reversedString += "#{word[i]}"
        i -= 1
    end
    puts reversedString
end

reverse_word("dog")

