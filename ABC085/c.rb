N, Y = gets.chomp.split(' ').map(&:to_i)

(0..N).each do |x|
  (0..(N - x)).each do |y|
    z = N - x - y
    sum = 10_000 * x + 5000 * y + 1000 * z
    if sum == Y
      puts [x, y, z].join(' ')
      exit
    end
  end
end

puts '-1 -1 -1'
