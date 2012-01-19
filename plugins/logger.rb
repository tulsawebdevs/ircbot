require 'cinch'

class Log
  include Cinch::Plugin
  plugin "log"

  listen_to :channel

  def check_folders_exist
    if(!File.directory?("#{$logdir}/#{Time.now.strftime('%Y')}"))
      Dir.mkdir("#{$logdir}/#{Time.now.strftime('%Y')}")
    end

    if(!File.directory?("#{$logdir}/#{Time.now.strftime('%Y')}/#{Time.now.strftime('%m')}"))
      Dir.mkdir("#{$logdir}/#{Time.now.strftime('%Y')}/#{Time.now.strftime('%m')}")
    end
  end

  def listen(m)
    $channels.each do |chan|
      self.check_folders_exist
      File.open("#{$logdir}/#{Time.now.strftime('%Y')}/#{Time.now.strftime('%m')}/#{Time.now.strftime('%d')}.log", "a+") do |file|
        file.puts("[#{Time.now.localtime().strftime("%T")}] <#{m.user}> #{m.message}")
      end
    end
  end
end


