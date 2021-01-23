=begin
This function uses recursion to check if a word is palindrome
=end

def palindrome_checker?(s)
  n = s.length
  if n <= 1
    return true
  else
    if s[0] != s[n-1]
      return false
    else
      palindrome?(s[1...n-1])
    end
  end
end
palindrome?('r')