require 'spec_helper' 

describe "StaticPages" do

  include Rails.application.routes.url_helpers

   subject { page }

  let(:base_title) { "Ruby on Rails Tutorial Sample App" }  

  describe "Home page" do

    before { visit root_path }

    it { should have_content('sample site') }
    it { should have_title(full_title('')) }
    it { should_not have_title('| Home') }

  end

  describe "Help page" do

    before { visit help_path }

    it { should have_content('Help') }
    it { should have_title(full_title('Help')) }
	
  end
  
  describe "About page" do
   
    before { visit about_path }

    it { should have_content('About') }
    it { should have_title(full_title('About us')) }

  end

  describe "Contract" do

    before { visit contract_path }

    it { should have_content('Contract') }
    it { should have_title(full_title('Contract')) }

  end
end
