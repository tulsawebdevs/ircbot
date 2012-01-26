# -*- coding: UTF-8 -*-
require 'cinch'
require 'rest_client'
require 'json'

class Github
  include Cinch::Plugin

  ORG = "tulsawebdevs"
  URL = "https://api.github.com"

  def all_repos
    repos_json = JSON.parse(RestClient.get "#{URL}/orgs/#{ORG}/repos")
    repos = ''
    repos_json.each do |r|
      repos += r['name'] + " "
    end
    return repos
  end

  match %r{github (.+)}
  def execute(m, query = nil)
    if(query == "repos")
      m.reply "All #{ORG} repos: #{all_repos}" 
    elsif(query == "help")
      m.reply "All commands: repos"
    else
      m.reply "ごめんなさい分かりません。"
    end
  end
end
