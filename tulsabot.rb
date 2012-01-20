require 'cinch'
Dir["./plugins/*.rb"].each {|file| require file }

$logdir = ENV['IRC_LOGDIR']
$channels = ["#tulsawebdevs"]

bot = Cinch::Bot.new do
  configure do |c|
    c.server = 'localhost'
    c.channels = $channels
    c.nick = "tulsabot"
    c.plugins.plugins = [Log, Plugins::Weather]
  end
end

bot.start
