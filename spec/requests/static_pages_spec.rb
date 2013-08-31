require 'spec_helper'
=begin
Somehow the utilities.rb will run and it checks the page title
   it { should not have_selector('title',
      text: "Ruby on Rails Tutorial Sample App | Home")}
=end

describe "Static pages" do
  describe "Home page" do
    subject {page}
    before { visit root_path }

    it { should have_selector('h1',   text: "Sample App") }
    it { should have_selector('title',text: full_title(''))}
    it { should_not have_selector('title', text: "| Home")}
    # I cannot get this to work lbelater: click_link "Sign up now!" rspec does not like
    # me using it at all ( i.e. syntax-wise, so it does not even get to showing you
    # examples and failures
  end



  describe "Help page" do
    subject {page}
    before { visit help_path }

    it { should have_selector('h1',   text: "Help") }
    it { should have_selector('title',text: full_title('Help'))}
  end

  describe "About page" do
    subject {page}
    before { visit about_path }

    it { should have_selector('h1',   text: "About") }
    it { should have_selector('title',text: full_title('About'))}
  end

  describe "Contact page" do
    subject {page}
    before { visit contact_path }

    it { should have_selector('h1',   text: "Contact") }
    it { should have_selector('title',text: full_title('Contact'))}
  end

  describe "Sign up page" do
    subject {page}
    before { visit signup_path }

    it { should have_selector('h1',   text: "Sign up") }
    it { should have_selector('title',text: full_title('Sign up'))}

  end



end #end of describe 'Static pages'

