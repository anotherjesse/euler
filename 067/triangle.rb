data = open('triangle.txt').read.split("\n").collect { |l| l.split(' ').collect { |n| n.to_i }}

(data.size-2).downto(0) do |n|
  0.upto(data[n].size-1) do |m|
    data[n][m] += [data[n+1][m], data[n+1][m+1]].max
  end
end

p data[0][0]
