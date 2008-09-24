require 'isaac'

client = Isaac::Application.new :nick => 'SomeBot',
                   :server => 'irc.freenode.net',
                   :port => 6667

client.start do
  on_connect do
    join "#twittirc"
  end
  on /^t (.*)/ do
    msg origin, "You said: " + message
  end
  on /quote/ do
    msg origin, "this is QOTD"
  end
end
