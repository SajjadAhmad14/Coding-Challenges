#
# ***** ALgorithm for balanced bracket using Array as a stack *****
# loop through every char of string
#   if char is '(' or '[' or '{'
#     push(char)
#   elsif char is ')' or ']' or '}'
#     if stack is empty? or top != char
#       return false
#     else
#       pop
#     end
#   end
# end
# if stack is empty?
#   true
# else
#   false
# end
#

def balanced_brackets?(str)
  stack = []
  str.each_char do |i|
    if str[i] == '(' || str[i] == '[' || str[i] == '{'
      stack.push(str[i])
    elsif str[i] == ')' || str[i] == ']' || str[i] == '}'
      top = stack[-1]
      if stack.empty? || (top != '(' && str[i] == ')' || top != '[' && str[i] == ']' || top != '{' && str[i] == '}')
        return false
      else
        stack.pop
      end
    end
  end
  if stack.empty?
    true
  else
    false
  end
end

p balanced_brackets?('(hello)[world]')
p balanced_brackets?('([)]')
p balanced_brackets?('[({}{}{})([])]')
