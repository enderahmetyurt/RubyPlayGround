range1 = 0...5_000_000
range2 = 5_000_000...10_000_000
number = 8_888_888
puts "Parent #{Process.pid}"
fork { puts "Child1 #{Process.pid}: #{range1.to_a.index(number)}" }
fork { puts "Child2 #{Process.pid}: #{range2.to_a.index(number)}" }
Process.wait


# => Parent 12833
# => Child2 12835: 3888888
# => Child1 12834:
# => ruby parallel.rb  0.24s user 0.04s system 93% cpu 0.305 total