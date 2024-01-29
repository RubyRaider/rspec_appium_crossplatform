require_relative '../helpers/appium_helper'
require_relative '../helpers/spec_helper'
require_relative '../page_objects/pages/home'
require_relative '../page_objects/pages/pdp'

class PdpSpec
  describe 'PDP' do

    let(:home_page) { Home.new(driver) }
    let(:pdp_page) { Pdp.new(driver) }

    it 'shows add to cart button' do
      home_page.go_to_backpack_pdp
      expect(pdp_page.add_to_cart_text).to eq 'Add To Cart'
    end
  end
end
