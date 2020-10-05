 # This method gets a string repeated infinitely and return
 # total number of occurences of a
 # s = string
 # n = number of charcters of string from which occurences of a is checked   
def repeatedString(s, n)
  s_size = s.size
  count_a = 0
  occurence_a = 0
  count_a = s.count('a')
  if s_size >= n
    occurence_a = s[0..n-1].count('a')
  else
    diff = n - s_size
    multiple = diff / s_size
    remain = diff % s_size
    if remain > 0
      occurence_a = s[0..remain-1].count('a')
    end
    occurence_a += count_a + count_a * multiple
  end
  occurence_a
end

p repeatedString('aba', 4)