# 4.2. define a method for testing palindromes.
# def palindrome_tester(str)
#   return false unless str.match?(/\A[a-zA-Z]+\z/) # only want letters, one word
#   str_reversed = str.reverse
#   if str == str_reversed
#     # would want to check if first and last letter are == as base case
#     puts "It's a palindrome!"
#   else
#     puts "It's not a palindrome"
#   end
# end



# more efficient solution
def is_palindrome?(str)
  cleaned_str = str.downcase.gsub(/[^a-z]/, '')  # remove non-letters and convert to lowercase
  left, right = 0, cleaned_str.length - 1

  #check that opposing letters are == each step of the way
  while left < right
    # exit the moment 'opposing' letters are different
    return false if cleaned_str[left] != cleaned_str[right]
    left += 1
    right -= 1
  end

  true
end
