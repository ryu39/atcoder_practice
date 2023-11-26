N = gets.to_i
d_list = gets.chomp.split(' ').map(&:to_i)

result = 0
(1..N).each do |m|
  day_max = d_list[m-1]
  (1..day_max).each do |d|
    str = m.to_s + d.to_s
    if str.chars.uniq!.length == 1
      result += 1
    end
  end
end

puts result
