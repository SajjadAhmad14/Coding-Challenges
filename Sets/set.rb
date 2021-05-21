require 'set'

def find_duplicates(array)
  duplicates = []
  unique_set = Set[]
  i = 0
  while i < array.length
    if unique_set.add?(array[i]) == nil
      duplicates << array[i]
    else
      unique_set.add(array[i])
    end
  i += 1
  end
  duplicates
end

p find_duplicates([1, 2, 3, 1, 5, 6, 7, 8, 5, 2])
# => [1, 5, 2]

p find_duplicates([3, 501, 17, 23, -43, 67, 5, 888, -402, 235, 77, 99, 311, 1, -43])
# => [-43]
