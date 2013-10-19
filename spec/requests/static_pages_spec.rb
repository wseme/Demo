require 'spec_helper'

describe "Static pages" do

	let(:base_title) { "Porsche 356 Registry" }

  describe "Home page" do

    it "should have the content 'Welcome'" do
      visit '/'
      expect(page).to have_content('Welcome')
    end

    it "should have the base title" do
      visit '/'
      expect(page).to have_title("Porsche 356 Registry")
    end

    it "should not have a custom page title" do
      visit '/'
      expect(page).not_to have_title('| Home')
    end
  end

  describe "FAQs page" do

    it "should have the content 'FAQs'" do
      visit '/static_pages/FAQs'
      expect(page).to have_content('FAQs')
    end

  	it "should have the right title" do
      	visit '/static_pages/FAQs'
  		expect(page).to have_title("#{base_title} | FAQs")
	end

  end


  describe "Fees page" do

    it "should have the content 'Fees'" do
      visit '/static_pages/Fees'
      expect(page).to have_content('Fees')
    end

  	it "should have the right title" do
      	visit '/static_pages/Fees'
  		expect(page).to have_title("#{base_title} | Fees")
	end

  end

  describe "Rules page" do


    it "should have the content 'Rules'" do
      visit '/static_pages/Rules'
      expect(page).to have_content('Rules')
    end

    it "should have the right title" do
      	visit '/static_pages/Rules'
  		expect(page).to have_title("#{base_title} | Rules")
	end

  end
end