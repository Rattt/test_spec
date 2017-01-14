require 'rails_helper'
require 'net/http'
require 'json'

RSpec.describe CurrentController, type: :controller do
  describe "GET #show" do

    it "returns 200" do
      get :show
      expect(response).to be_ok
    end

    it "get price form Current" do
      current = Current.create! FactoryGirl.attributes_for(:current)
      get :show
      expect(assigns(:price)).to eq(current.price)
    end

    it "get price form Forsed" do
      forsed = Forsed.create! FactoryGirl.attributes_for(:forsed)
      get :show
      expect(assigns(:price)).to eq(forsed.price)
    end

    describe "must get price form cbr" do
      subject { double('current') }
      let(:current) { double(Current) }

      it 'current nil' do
        xml_content = Net::HTTP.get(URI.parse('http://www.cbr.ru/scripts/XML_daily.asp'))
        price_get = Hash.from_xml(xml_content)["ValCurs"]["Valute"][9]["Value"]
        allow(subject).to receive(:price).and_return(price_get)
        expect(subject.price).to eq price_get
      end
    end

  end
end
