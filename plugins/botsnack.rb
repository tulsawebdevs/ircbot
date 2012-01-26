require 'cinch'

class Botsnack
  include Cinch::Plugin

  match /botsnack/

  def execute(m)
    m.reply "yum! thank you #{m.user.nick}"
  end
end
