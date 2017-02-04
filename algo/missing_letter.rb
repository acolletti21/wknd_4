# Return the missing letter from a given range of letters passed into the method
# as a string. If there is no missing letter, the method should return nil.
# bonus: returns a string of all missing letters as a string. ex: find_missing_letter("ace") would return "bd", write your own test.

def find_missing_letter(range)
  letters = range.chars.to_a
  in_order = (letters[0]..letters[-1]).to_a
  in_order.delete_if do |letter|
    letters.include?(letter)
  end
  return in_order[0]
end

# def find_missing_letter(range)
#   letters = range.chars.to_a
#   in_order = (letters[0]..letters[-1]).to_a
#   missing_letters = []
#   in_order.each do |letter|
#     if letters.include?(letter) == false
#       missing_letters << letter
#     end
#   end
#   return missing_letters
# end


# Driver code - don't touch anything below this line.
puts "TESTING find_missing_letter..."
puts

result = find_missing_letter("opqrsuv")

puts "Your method returned:"
puts result
puts

if result == "t"
  puts "PASS!"
else
  puts "F"
end

result = find_missing_letter("xyz")

puts "Your method returned:"
puts result
puts

if result == nil
  puts "PASS!"
else
  puts "F"
end
