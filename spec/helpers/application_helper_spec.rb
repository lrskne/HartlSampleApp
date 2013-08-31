require 'spec_helper'
# Think of the application_helper.rb as helping out the view to fill
# up the title, but then here in the spec
# you need to make sure it does its job properly :)
describe ApplicationHelper do
  describe "full_title" do
    it "should include the page title" do
      full_title("foo").should =~ /foo/
    end

    it "should include the base title" do
      full_title("foo").should =~ /^Ruby on Rails Tutorial Sample App/
    end

    it "should not include a bar for the home page" do
      full_title("").should_not =~ /\|/
    end
  end
end
