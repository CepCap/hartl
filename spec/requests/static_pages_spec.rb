require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /static_pages" do
    let(:title) { "Ruby on Rails Tutorial Sample App | "  }

    describe "Home page" do
      before { visit '/static_pages/home' }

      it "should have the content 'Sample App'" do
        expect(page).to have_content('Sample App')
      end

      it "should have the title 'Home'" do
        expect(page).to have_title(title + "Home")
      end
    end

    describe "Help page" do
      before { visit '/static_pages/help' }

      it "should have the content 'Help'" do
        expect(page).to have_content('Help')
      end

      it "should have the title 'Help'" do
        expect(page).to have_title(title + "Help")
      end
    end

    describe "About page" do
      before { visit '/static_pages/about' }

      it "should have the content 'About Us'" do
        expect(page).to have_content('About Us')
      end

      it "should have the title 'About Us'" do
        expect(page).to have_title(title + "About Us")
      end
    end

    describe "Contact page" do
      before { visit '/static_pages/contact' }

      it "should have the content 'Excercise'" do
        expect(page).to have_content('Excercise')
      end

      it "should have the title 'Contact'" do
        expect(page).to have_title(title + "Contact")
      end
    end
  end
end
