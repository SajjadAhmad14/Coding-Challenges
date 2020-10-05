def palindromeIndex(s)
  index = 0
  return -1 if s == s.reverse

  c = s.chars
  c.size.times do |i|
    c.size.times do |j|
      if c.count(c[i]) == 1
        index = i
        break
      end
    end
  end
  index
end

p palindromeIndex('aba')