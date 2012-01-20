# -*- coding: UTF-8 -*-
require 'cinch'
require 'chronic'

class Hello
  include Cinch::Plugin

  match "hello"

  def execute(m)
    m.reply "こんにちは#{m.user.nick}お元気ですか。時間は#{Chronic.parse("1 hour ago").strftime("%T")}。"
    puts('wasup')
  end
end
