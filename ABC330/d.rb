N = gets.chomp.to_i

x_list = Array.new(N) { [] }
y_count = Array.new(N) { 0 }

N.times do |i|
  s = gets.chomp
  s.chars.each_with_index do |ch, j|
    if ch == 'o'
      x_list[i] << j
      y_count[j] += 1
    end
  end
end

count = 0
x_list.each_with_index do |row, row_num|
  (0...row.length).each do |i|
    x1 = row[i]

    count += (y_count[x1] - 1) * (row.length - 1)
  end
end

puts count
