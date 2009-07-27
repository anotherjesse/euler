puts (2..100).collect { |a| (2..100).collect { |b| a**b }}.flatten.uniq.size
