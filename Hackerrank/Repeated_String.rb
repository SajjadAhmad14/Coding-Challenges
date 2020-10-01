 # This method gets a string repeated infinitely and return
 # total number of occurences of a
 # s = string
 # n = number of charcters of string from which occurences of a is checked   
def repeatedString(s, n)
  s_size = s.size
  count_a = 0
  occurence_a = 0
  s_size.times do |i| 
    if s[i] == 'a'
      count_a += 1
    end
  end
  if s_size >= n
    s[0..n-1].size.times do |i|
      if s[i] == 'a'
        occurence_a += 1
      end
    end
  else
    diff = n - s_size
    multiple = diff / s_size
    remain = diff % s_size
    if remain > 0
      s[0..remain-1].size.times do |i|
        if s[i] == 'a'
          occurence_a += 1
        end
      end
    end
    occurence_a += count_a + count_a * multiple
  end
  occurence_a
end