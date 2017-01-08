class CurrentController < ApplicationController
  require 'net/http'
  require 'json'

  def show
    @price = Current.last

    if @price.nil?
      xml_content = Net::HTTP.get(URI.parse('http://www.cbr.ru/scripts/XML_daily.asp'))
      @price = Hash.from_xml(xml_content)["ValCurs"]["Valute"][9]["Value"]
    end
  end
end
