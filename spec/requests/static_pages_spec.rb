require 'spec_helper'
=begin
Somehow the utilities.rb will run and it checks the page title
   it { should not have_selector('title',
      text: "Ruby on Rails Tutorial Sample App | Home")}
=end

describe "Static pages" do

  subject {page}

  shared_examples_for "all static pages" do
  it { should have_selector('h1',   text: heading) }
    it { should have_selector('title',text: full_title(page_title))}
  end



  describe "Home page" do
    subject {page}
    before { visit root_path }
    let(:heading) {"Sample App"}
    let(:page_title) {''}

    it_should_behave_like "all static pages"
    it { should_not have_selector('title', text: "| Home")}
    # for some reason click_link needs its own example? Why?
    # Cannot put it right here
    # click_link "Sign up now!"
    # If you put it here you get errors,  i.e. syntax-wise, so
    # it does not even get to showing you examples and failures
    it "should have the right links on the layout" do
      visit root_path
      click_link "About"
      page.should have_selector 'title', text: full_title('About Us')

      click_link "Help"
      page.should have_selector 'title', text: full_title('Help')

      click_link "Contact"
      page.should have_selector 'title', text: full_title('Contact')

      click_link "Home"


      click_link "Sign up now!"
      page.should have_selector 'title', text: full_title('Sign up')


    end

  end




  describe "Help page" do
    subject {page}
    before { visit help_path }

    let(:heading) {"Help"}
    let(:page_title) {'Help'}

    it_should_behave_like "all static pages"
  end

  describe "About page" do
    subject {page}
    before { visit about_path }

    let(:heading) {"About"}
    let(:page_title) {'About'}

    it_should_behave_like "all static pages"

  end

  describe "Contact page" do
    subject {page}
    before { visit contact_path }

    let(:heading) {"Contact"}
    let(:page_title) {'Contact'}

    it_should_behave_like "all static pages"
  end

  describe "Sign up page" do
    subject {page}
    before { visit signup_path }

    it { should have_selector('h1',   text: "Sign up") }
    it { should have_selector('title',text: full_title('Sign up'))}

  end



end #end of describe 'Static pages'

