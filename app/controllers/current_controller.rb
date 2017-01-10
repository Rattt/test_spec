class CurrentController < ApplicationController

  def show
    current = Current.last
    forse = Forsed.last
    if current.nil?
      xml_content = Net::HTTP.get(URI.parse('http://www.cbr.ru/scripts/XML_daily.asp'))
      @price = Hash.from_xml(xml_content)["ValCurs"]["Valute"][9]["Value"]
    else
      @price = current.price
    end
    unless forse.nil?
      if Time.now < forse.endtime
        @price = forse.price
      end
    end
  end

end
