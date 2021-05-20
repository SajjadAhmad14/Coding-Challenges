def bfs(graph)
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
  result
end

p bfs({
        0 => [2],
        1 => [4],
        2 => [5, 0, 3],
        3 => [2],
        4 => [1, 5],
        5 => [4, 2]
      })
