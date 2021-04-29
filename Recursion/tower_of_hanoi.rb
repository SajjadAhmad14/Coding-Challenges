def hanoi_steps(number_of_discs)
  move(number_of_discs, 1, 2, 3)
end

def move(n, one, two, three)
  if(n >0)
    move(n-1, one, three, two)
    puts "#{one}->#{three}"
    move(n-1, two, one, three)
  end
end
hanoi_steps(4)