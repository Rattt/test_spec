class CurrentController < ApplicationController

  def show
    @price = Current.last.price

    if @price.nil?
      xml_content = Net::HTTP.get(URI.parse('http://www.cbr.ru/scripts/XML_daily.asp'))
      @price = Hash.from_xml(xml_content)["ValCurs"]["Valute"][9]["Value"]
    end
  end

end



# forse = Forsed.last
# current = Current.last
#
# @value = nil
#
# unless current.nil?
#   @value = current.price
# end
#
# unless forse.nil?
#   if Time.now < forse.endtime
#     @value = forse.price
#   else
#     @value = current.price
#   end
# end
