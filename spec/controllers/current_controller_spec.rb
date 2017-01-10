require 'rails_helper'
require 'net/http'
require 'json'

RSpec.describe CurrentController, type: :controller do
  describe "GET #show" do

    it "returns 200" do
      get :show
      expect(response).to be_ok
    end
    describe "GET #showdsfasdfd" do
      subject { double('current') }
      let(:current) { double(Current) }
      it 'returns nil' do
        xml_content = Net::HTTP.get(URI.parse('http://www.cbr.ru/scripts/XML_daily.asp'))
        price_get = Hash.from_xml(xml_content)["ValCurs"]["Valute"][9]["Value"]
        allow(subject).to receive(:price).and_return(price_get)
        expect(subject.price).to eq price_get
      end
    end

    describe "GEasfdfsf" do
      # let(:current) { FactoryGirl.create(:current) }
      it "get price form Current" do
        current = Current.create! FactoryGirl.attributes_for(:current)
        get :show
        expect(assigns(:price)).to eq(current.price)
      end
    end

    describe "GEasfdfsf" do
      # let(:current) { FactoryGirl.create(:current) }
      it "get price form Current" do
        forsed = Forsed.create! FactoryGirl.attributes_for(:forsed)
        get :show
        expect(assigns(:price)).to eq(forsed.price)
      end
    end
    # describe "GET #show" do
    #   it "assigns the requested demo as @demo" do
    #     demo = Demo.create! valid_attributes
    #     get :show, params: {id: demo.to_param}, session: valid_session
    #     expect(assigns(:demo)).to eq(demo)
    #   end
    # end

    # let!(:price) { nil }
    # let(:price) { double(Current) }
    # before { allow(Current).to receive(:price).and_return() }
    # it "should go to cbr" do
    #
      # xml_content = Net::HTTP.get(URI.parse('http://www.cbr.ru/scripts/XML_daily.asp'))
      # price_get = Hash.from_xml(xml_content)["ValCurs"]["Valute"][9]["Value"]
    #   # @price = nil
    #   assigns(double(Current).as_null_object)
    #   render
    #   # expect(assigns(:price)).to eq price
    #   expect(assigns(:price)).to eql price
    #   # allow(price).to receive(:price).and_return("The RSpec Book")
    # end

  end
end
