def connected_graph?(graph)
  start_node = 0
  current_node = 0
  queue = [start_node]
  result = [start_node]
  i = queue.length
  while i > 0
    current_node = queue.shift
    adj_vertices = graph[current_node]
    adj_vertices.each do |value|
      next if result.include?(value)

      queue << value
      result << value
      i += 1
    end
    i -= 1
  end
  if result.length === graph.length
    return true
  end
  false
end

p connected_graph?({
        0 => [1, 2],
        1 => [0, 2],
        2 => [0, 1, 3, 4, 5],
        3 => [2, 4],
        4 => [3, 2],
        5 => [2]

      })
