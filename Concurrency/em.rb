EM.run do
  EM.add_timer(1) do
    puts 'sleeping...'
    EM.system('sleep 1') { puts "woke up!" }
    puts 'continuing...'
  end
  EM.add_timer(3) { EM.stop }
end