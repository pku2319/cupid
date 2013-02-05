module Okcupid
  require 'mechanize'

  def self.login(user, pass)
    agent = Mechanize.new

    agent.user_agent_alias = 'Mac Safari'

    agent.get('http://www.okcupid.com') do |page|
      my_page = page.form_with(:action => 'https://www.okcupid.com/login') do |f|
        f.username = user
        f.password = pass
      end.submit
    end

    agent
  end

  def self.grab_match(agent, match_username)
    agent.get("http://www.okcupid.com/profile/#{match_username}") do |page|
      doc = Nokogiri::HTML(page.body)
      #doc.css('span#match')
    end
  end

end