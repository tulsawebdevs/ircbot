# -*- coding: UTF-8 -*-
require 'cinch'

class Hello
  include Cinch::Plugin

  match "hello"

  def execute(m)
    m.reply "こんにちは#{m.user.nick}お元気ですか。 "
    puts('wasup')
  end
end
