D = gets.chomp.to_i

limit_x = Math.sqrt(D).floor

result = Float::INFINITY
(1..limit_x).each do |x|
  y2 = D - x**2
  y = Math.sqrt(y2)

  floor_y = y.floor
  ans = (y2 - floor_y**2).abs
  if ans < result
    result = ans
  end

  ceil_y = y.ceil
  ans = (y2 - ceil_y**2).abs
  if ans < result
    result = ans
  end
end

puts result
