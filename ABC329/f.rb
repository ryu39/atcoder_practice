require 'set'

N, Q = gets.chomp.split(' ').map(&:to_i)
c_list = gets.chomp.split(' ').map { |c| Set.new([c.to_i]) }

Q.times do |i|
  a, b = gets.chomp.split(' ').map(&:to_i)

  if c_list[a-1].length < c_list[b-1].length
    c_list[a-1].each do |n|
      c_list[b-1] << n
    end
    c_list[a-1].clear
  else
    c_list[b-1].each do |n|
      c_list[a-1] << n
    end
    c_list[b-1].clear

    c_list[a-1], c_list[b-1] = c_list[b-1], c_list[a-1]
  end

  puts c_list[b-1].length
end
