class Scraping
  def self.get_rst_info
    agent = Mechanize.new
    links = []
    next_url = ""

    while true
      current_page = agent.get("https://tabelog.com/kanagawa/A1405/A140504/R9904/rstLst/?vs=1&sa=%E6%AD%A6%E8%94%B5%E6%96%B0%E5%9F%8E%E9%A7%85&sk=&lid=hd_search1&vac_net=&svd=20190501&svt=1900&svps=2&hfc=1&sw=")
      elements = current_page.search('.list-rst__rst-name a')

      elements.each do |ele|rails sa
        links << ele.get_attribute('href')
      end
    end

  end

  # def self.add_info_to_db
  # end
end
