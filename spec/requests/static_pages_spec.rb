require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

	it "should have the right title" do
  		visit '/'
  		expect(page).to have_title("Porsche 356 Registry | Home")
	end

    it "should have the content 'Porsche 356 Registry'" do
      visit '/'
      expect(page).to have_content('Porsche 356 Registry')
    end
  end

  describe "FAQs page" do

    it "should have the content 'FAQs'" do
      visit '/static_pages/FAQs'
      expect(page).to have_content('FAQs')
    end
  end

  describe "Rules page" do

    it "should have the content 'Rules'" do
      visit '/static_pages/Rules'
      expect(page).to have_content('Rules')
    end
  end
end