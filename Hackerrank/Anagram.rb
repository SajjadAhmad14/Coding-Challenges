def anagram(s)
str_length = s.size
n = str_length / 2
count = 0
if str_length.odd?
  return -1
else
  s1 = s[0..n-1].chars
  s2 = s[n..- 1].chars
  s1.size.times do |i|
    if s2.include?(s1[i])
       s2.delete_at(s2.index{|el| el == s1[i]})
    else
    count += 1
    end
  end
end
 count
end

p anagram('abccde')