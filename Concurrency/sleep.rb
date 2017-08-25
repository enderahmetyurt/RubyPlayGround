threads = 10.times.map do |i|
  Thread.new { sleep 1 }
end

threads.each(&:join)

# => ruby sleep.rb  0.07s user 0.01s system 7% cpu 1.095 total