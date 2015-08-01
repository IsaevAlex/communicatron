require 'rails_helper'
 describe "Static pages" do
  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_content('Communicatron') }
    it { should have_title("Ruby on Rails Tutorial Communicatron") }
    it { should_not have_title('| Home') }
  end
  
  describe "Help page" do
      before { visit help_path}
      
      it { should have_content('Help') }
      it { should have_title("Ruby on Rails Tutorial Help") }
      it { should_not have_title('| Help') }
  end
  
  describe "About page" do
      before { visit about_path}
      
      it { should have_content('About') }
      it { should have_title("Ruby on Rails Tutorial About") }
      it { should_not have_title('| About') }
  end
     
  describe "Contact page" do
      before { visit contact_path}
      
      it { should have_content('Contact') }
      it { should have_title("Ruby on Rails Tutorial Contact") }
      it { should_not have_title('| Contact') }
  end
     
   describe "signup page" do
    before { visit signup_path }

    it { should have_content('Sign up') }
    it { should have_title(full_title('Sign up')) }
  end
end
