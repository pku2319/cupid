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
    page = agent.get("http://www.okcupid.com/profile/#{match_username}")
    doc = Nokogiri::HTML(page.body)
    match_text = doc.css('span.match').first.text
    
    #return match percent
    /\d\d/.match(match_text)[0]
  end

end