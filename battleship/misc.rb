x = 1
y = 1
grid = []

loop do
  loop do
    grid << [x,y]

    y += 1
    break if y == 6
  end

  y = 1
  x += 1
  break if x == 6
end

p grid

# cruiser

cruiser = []

grid.each do |sq|
  x = sq[0]
  y = sq[1]
  
  if grid.include?([x,y+1]) 
    cruiser << [[x,y],[x,y+1]]
  end
end

grid.each do |sq|
  x = sq[0]
  y = sq[1]

  if grid.include?([x+1,y]) 
    cruiser << [[x,y],[x+1,y]]
  end
end

p cruiser
p cruiser.size

# battleship

battleship = []

grid.each do |sq|
  x = sq[0]
  y = sq[1]
  
  if grid.include?([x,y+1]) && grid.include?([x,y+2]) 
    battleship << [[x,y],[x,y+1],[x,y+2]]
  end
end

grid.each do |sq|
  x = sq[0]
  y = sq[1]

  if grid.include?([x+1,y]) && grid.include?([x+2,y])
    battleship << [[x,y],[x+1,y],[x+2,y]]
  end
end

p battleship
p battleship.size

bs = battleship.sample
p bs
p bs.sample