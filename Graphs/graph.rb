def graph(hash_graph)  
  start_point = 0
  next_point = 0
  arr = [start_point]
  while next_point != 4
    edges = hash_graph[next_point]
    edges.each do |d|
      next_point = d
      arr << next_point
      break
    end
  end
  arr
end

hash = { 
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2],
}
p graph(hash)