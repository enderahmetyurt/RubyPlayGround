def fibonacci(n)
  return n if n <= 1
  fibonacci( n - 1 ) + fibonacci( n - 2 )
end

guild_fibonacci = Guild.new(script: %q{
  channel = Guild.default_channel

  while(n, return_channel = channel.receive)
    return_channel.transfer( fibonacci(n) )
  end
})

channel = Guild::Channel.new \
  guild_fibonacci.transfer([3, channel])

puts channel.receive