class GetCurrentJob < ApplicationJob
  queue_as :default

  require 'net/http'
  require 'json'

  def perform
    xml_content = Net::HTTP.get(URI.parse('http://www.cbr.ru/scripts/XML_daily.asp'))
    value = Hash.from_xml(xml_content)["ValCurs"]["Valute"][9]["Value"]
    Current.new(price: value.gsub(",",".").to_f).save
  end
end
