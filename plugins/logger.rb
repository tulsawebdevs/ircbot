require 'cinch'

class Log
  include Cinch::Plugin
  plugin "log"

  listen_to :channel

  def check_folders_exist(now)
    logs_by_year = "#{ $logdir }/#{ now.strftime("%Y") }"
    if !File.directory?(logs_by_year)
      Dir.mkdir(logs_by_year)
    end

    logs_by_month = "#{ $logdir }/#{ now.strftime("%Y/%m") }"
    if !File.directory?(logs_by_month)
      Dir.mkdir(logs_by_month)
    end
  end

  def listen(m)
    $channels.each do |chan|
      # localtime for #tulsawebdevs is CST
      now = Time.now.localtime("-06:00")

      check_folders_exist(now)

      filename = "#{ $logdir }/#{ now.strftime("%Y/%m/%d") }.log"
      File.open(filename, "a") do |file|
        file.puts("[#{ now.strftime("%T") }] <#{m.user}> #{m.message}")
      end
    end
  end
end


