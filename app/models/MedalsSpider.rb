class MedalsSpider < Kimurai::Base
    @name = 'medals_spider'
    @engine = :mechanize

    def self.process(url)
    @start_urls = [url]
    self.crawl!
    end

    def parse(response, url:, data: {})
        results=[]
    response.xpath("//*[@id='mw-content-text']/div[1]/table[2]").each do |medal|
    item = {}


    item[:rank] = medal.at('td[1]').text&.squish&.delete('^0-9').to_i
    item[:nation] = medal.at('//a')&.text&.squish
    item[:gold] = medal.at('td[3]')&.text&.squish&.delete('^0-9').to_i
    item[:silver] = medal.at('td[4]')&.text&.squish&.delete('^0-9').to_i
    item[:bronze] = medal.at('td[5]')&.text&.squish&.delete('^0-9').to_i
    item[:total] = medal.at('td[6]')&.text&.squish&.delete('^0-9').to_i

    results << Medal.where(item).create
    end
    end
end