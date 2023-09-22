N = gets.to_i

plan = [[0, 0, 0]]
N.times do
  t, x, y = gets.chomp.split(' ').map(&:to_i)
  plan << [t, x, y]
end

plan.each_cons(2) do |pos1, pos2|
  diff_t = pos2[0] - pos1[0]
  diff_x = (pos2[1] - pos1[1]).abs
  diff_y = (pos2[2] - pos1[2]).abs
  distance = diff_x + diff_y
  if distance > diff_t
    puts 'No'
    exit
  elsif (distance - diff_t).odd?
    puts 'No'
    exit
  end
end

puts 'Yes'
