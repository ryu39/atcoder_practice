N, M = gets.chomp.split(' ').map(&:to_i)
a_list = gets.chomp.split(' ').map(&:to_i)

election_map = (1..N).map { |a| [a, 0] }.to_h

current_a = 1
current_a_count = 0
a_list.each do |a|
  election_map[a] += 1

  if election_map[a] > current_a_count || (election_map[a] == current_a_count && a < current_a)
    current_a = a
    current_a_count = election_map[a]
  end
  puts current_a
end
