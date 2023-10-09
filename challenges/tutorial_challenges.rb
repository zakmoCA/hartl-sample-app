# 4.2. define a method for testing palindromes.
def palindrome_tester(str)
  return false unless str.match?(/\A[a-zA-Z]+\z/) # only want letters, one word
  str_reversed = str.reverse
  if str == str_reversed
    # would want to check if first and last letter are == as base case
    puts "It's a palindrome!"
  else
    puts "It's not a palindrome"
  end
end

