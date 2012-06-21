require 'spec_helper'

describe "Static pages" do
  
    describe "Home page" do

    it "should have the h1 'Ohours'" do
      visit '/static_pages/home'
      page.should have_selector('h1', :text => 'Ohours')
    end

    it "should have the title 'Ohours'" do
      visit '/static_pages/home'
      page.should have_selector('title',
                        :text => "Ohours")
    end
  end

  describe "Help page" do

    it "should have the h1 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      visit '/static_pages/help'
      page.should have_selector('title',
                        :text => "Help")
    end
  end
end
